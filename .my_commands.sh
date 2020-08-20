#!/usr/bin/env bash

# prints the input

export LOCAL_IP=`ipconfig getifaddr en0`


function vsc() {
  dir=".";

  while getopts ":hf:" opt; do
    case ${opt} in
      h )
        echo "Usage:"
        echo "  vsc [srv] [-o] [-f path]"
        echo "  srv   Open a server with file"
        echo "  -o    Change the server to an open server (0.0.0.0:3000)"
        echo "  -f    Enter a dir or file other than current dir"
        return
        ;;
      f )
        [ -f $OPTARG ] || [ -d $OPTARG ] && dir=$OPTARG
        ;;
      \? )
        echo "Invalid Option: -$OPTARG" 1>&2
        return
        ;;
    esac
  done
  shift $((OPTIND -1))
  
  [ $# -eq 0 ] && open -a "Visual Studio Code" $dir && echo "Opening $dir in VSCode" && return
  subcommand=$1; shift

  case "$subcommand" in
    srv)
      open=0
      shift $((OPTIND -1))
      cd $dir
      open -a "Visual Studio Code" .
      if [ $open = 0 ]; then
        browser-sync start -s -f . --no-notify --host $LOCAL_IP --port 3000
      else 
        open "http://localhost:3000"
        php -S localhost:3000
      fi
      cd -
      ;;
  esac
  
}

function nv() {
  nvim $@
}

function lc() {
  colorls $@
}

alias ll="ls -l"
alias la="ls -a"
alias lal="ls -a -l"
alias rm="rm -i"
alias git_dotfiles='/usr/local/bin/git --git-dir=$HOME/dotfiles.git/ --work-tree=$HOME'




function runfale() {
  i=0
  while "$@"; do 
    ((++i))
  done
  echo "Number of runs: $i"
}

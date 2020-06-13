source ~/.my_commands.sh

source ~/.pihole.sh

source ~/.armstrong.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /Users/marcoseiza/Library/Preferences/org.dystroy.broot/launcher/bash/br

source /Users/marcoseiza/miss_sem/.marco_polo

source $(dirname $(gem which colorls))/tab_complete.sh

SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_CHAR_SYMBOL=
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_HG_SHOW=false
SPACESHIP_HG_BRANCH_SHOW=false
SPACESHIP_HG_STATUS_SHOW=false
SPACESHIP_EXEC_TIME_SHOW=false
SPACESHIP_BATTERY_SHOW=false
autoload -U promptinit; promptinit
prompt spaceship

source /Users/marcoseiza/zshplug/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh



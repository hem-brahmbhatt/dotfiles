source /Users/hem/.alias
source /Users/hem/.commands
source /Users/hem/.auth

### Client specific dotfiles, so we're not polluting OS dotfiles.

# source /Users/hem/Projects/NewsUK/TheSun/.profile
# source /Users/hem/Projects/NewsUK/Times/.profile
# source /Users/hem/Projects/elife/.profile
# source /Users/hem/Projects/Nexmo/.profile
# source /Users/hem/Projects/NewsUK/Wireless/.profile
source /Users/hem/Projects/CloudMargin/.profile

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# AWS
complete -C aws_completer aws
# source $(which assume-role)

# adding gitlab key
ssh-add ~/.ssh/gitlab > /dev/null 2>&1

# https://github.com/tmux/tmux/issues/475
export EVENT_NOKQUEUE=1

# Ignore history from tmux
HISTCONTROL=ignoreboth

# Git autocomplete
source ~/.git-completion.bash

# History timestamp
export HISTTIMEFORMAT="%h %d %H:%M:%S "
export HISTSIZE=50000
export HISTFILESIZE=50000

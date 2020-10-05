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

# AWS
complete -C aws_completer aws
source $(which assume-role)

export PATH="/usr/local/opt/gnu-getopt/bin:/usr/local/bin:$PATH"

# rust - cargo
export PATH="/Users/hem/.cargo/bin:$PATH"

# ruby
eval "$(rbenv init -)"

# adding gitlab key
ssh-add ~/.ssh/gitlab > /dev/null 2>&1

# nvm
export NVM_DIR=$HOME/.nvm
[ -s "$NVM_DIR/nvm.sh"  ] && . "$NVM_DIR/nvm.sh" # This loads nvm

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

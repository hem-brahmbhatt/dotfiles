source /Users/$USER/.alias
source /Users/$USER/.commands
# source /Users/$USER/.auth

### Client specific dotfiles, so we're not polluting OS dotfiles.
CURRENT_CLIENT=Bloomberg
source /Users/$USER/Projects/$CURRENT_CLIENT/.profile

# Homebrew
BREWPATH=$(brew --prefix)
eval "$($BREWPATH/bin/brew shellenv)"
export PATH="$(brew --prefix)/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
  [ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

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

# fzf preferences
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

# fix jq color of null on dark background
export JQ_COLORS='0;31:0;39:0;39:0;39:0;32:1;39:1;39'

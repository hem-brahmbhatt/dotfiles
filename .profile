source /Users/$USER/.alias
source /Users/$USER/.commands
# source /Users/$USER/.auth

# Homebrew
source /Users/$USER/.brewsetup

# NVM
source /Users/$USER/.nvmsetup

# JDK
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"

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

### Client specific dotfiles, so we're not polluting OS dotfiles.
#source /Users/$USER/Projects/Bento/.profile
source /Users/$USER/Projects/Gousto/.profile

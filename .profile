PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# added by travis gem
[ -f /Users/hem/.travis/travis.sh ] && source /Users/hem/.travis/travis.sh

# nvm
export NVM_DIR=$HOME/.nvm
[ -s "$NVM_DIR/nvm.sh"  ] && . "$NVM_DIR/nvm.sh" --no-use # This loads nvm

# https://github.com/tmux/tmux/issues/475
export EVENT_NOKQUEUE=1

# Ignore history from tmux
HISTCONTROL=ignoreboth

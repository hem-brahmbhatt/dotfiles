source /Users/hem/.alias
source /Users/hem/.commands
source /Users/hem/.auth
# source /Users/hem/Projects/NewsUK/TheSun/.profile
# source /Users/hem/Projects/NewsUK/Times/.profile
# source /Users/hem/Projects/elife/.profile
# source /Users/hem/Projects/Nexmo/.profile
source /Users/hem/Projects/NewsUK/Wireless/.profile

complete -C aws_completer aws


source $(which assume-role)

export PATH="/usr/local/opt/gnu-getopt/bin:/usr/local/bin:$PATH"

export ANDROID_HOME="/Users/hem/Library/Android/sdk"
export ANDROID_NDK_HOME="/Users/hem/Library/Android/sdk/ndk-bundle"

eval "$(rbenv init -)"

ssh-add ~/.ssh/gitlab > /dev/null 2>&1

# nvm
export NVM_DIR=$HOME/.nvm
[ -s "$NVM_DIR/nvm.sh"  ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# https://github.com/tmux/tmux/issues/475
export EVENT_NOKQUEUE=1

# Ignore history from tmux
HISTCONTROL=ignoreboth

source /Users/hem/.alias
source /Users/hem/.mac_colors
source /Users/hem/.commands
source /Users/hem/.auth
#source /Users/hem/Projects/NewsUK/TheSun/.profile
source /Users/hem/Projects/NewsUK/Times/.profile

complete -C aws_completer aws

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

source $(which assume-role)

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

source /Users/hem/.profile
export PATH="/usr/local/opt/gnu-getopt/bin:/usr/local/bin:$PATH"

export ANDROID_HOME="/Users/hem/Library/Android/sdk"
export ANDROID_NDK_HOME="/Users/hem/Library/Android/sdk/ndk-bundle"

eval "$(rbenv init -)"

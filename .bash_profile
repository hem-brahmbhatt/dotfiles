source /Users/hem/.alias
source /Users/hem/.mac_colors
source /Users/hem/.commands
source /Users/hem/Projects/NewsUK/TheSun/.profile

complete -C aws_completer aws
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

source /Users/hem/.profile
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"

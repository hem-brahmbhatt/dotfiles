# USE THIS FOR GUI CONFIGURATION

source /Users/hem/.mac_colors
source /Users/hem/.profile

# show git branch in the bash promp, e.g. "~/Projects/some-project(master) $"
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# bash completion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh"  ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export PROMPT_DIRTRIM=2
export BASH_SILENCE_DEPRECATION_WARNING=1

alias luamake=/Users/hem/Projects/dotfiles/repos/lua-language-server/3rd/luamake/luamake

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# . /opt/homebrew/etc/profile.d/z.sh

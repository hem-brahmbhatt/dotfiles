# USE THIS FOR NON-LOGIN INTERACTIVE MODE

# Bash prompt set to "/path/to/directory $"
# This is the prompt which will be used when using SSH
export PS1="\w $ "

source /Users/hem/.profile

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias luamake=/Users/hem/Projects/lua-language-server/3rd/luamake/luamake

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

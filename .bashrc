# OPENSPEC:START
# OpenSpec shell completions configuration
if [ -d "/Users/hem.brahmbhatt/.local/share/bash-completion/completions" ]; then
  for f in "/Users/hem.brahmbhatt/.local/share/bash-completion/completions"/*; do
    [ -f "$f" ] && . "$f"
  done
fi
# OPENSPEC:END

# USE THIS FOR NON-LOGIN INTERACTIVE MODE

# Bash prompt set to "/path/to/directory $"
# This is the prompt which will be used when using SSH
export PS1="\w $ "

source /Users/$USER/.profile

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias luamake=/Users/$USER/Projects/dotfiles/repos/lua-language-server/3rd/luamake/luamake

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

. $(brew --prefix)/etc/profile.d/z.sh
#export PATH="/Users/hem.brahmbhatt/Library/Python/3.13/bin:$PATH"

# Added by git-ai installer on Wed May  6 11:12:40 BST 2026
export PATH="/Users/hem.brahmbhatt/.git-ai/bin:$PATH"

source '/Users/hem.brahmbhatt/.bash_completions/gousto.sh'


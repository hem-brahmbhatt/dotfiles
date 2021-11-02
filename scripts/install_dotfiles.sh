#!/bin/sh -e

dotfiles=".alias .bash_profile .bashrc .commands .git-completion.bash .gitconfig .mac_colors .profile .sensible.tmux .tmux.conf.local"
config="nvim kitty"

continuePrompt() {
  printf "Continue (Y/n)?"
  read -r REPLY
  case "${REPLY}" in
    n|N ) echo "Aborting!"; exit 1 ;;
    * ) return ;;
  esac
}

installDotfiles() {
  for dotfile in ${dotfiles}; do
    (cd ~ && ln -s ~/Projects/dotfiles/${dotfile} || continuePrompt)
  done
}

installConfig() {
  for configFolder in ${config}; do
    (cd ~/.config && ln -s ~/Projects/dotfiles/${configFolder} || continuePrompt)
  done
}

installDotTmuxConfig() {
  (cd ~ && ln -s ~/Projects/dotfiles/repos/.tmux/.tmux.conf)
}

echo "Installing dotfiles..."
installDotfiles
installConfig
installDotTmuxConfig
echo "Done!"

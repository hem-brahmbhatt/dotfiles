#!/bin/sh -e

dotfiles=".alias .bash_profile .bashrc .commands .git-completion.bash .gitconfig .mac_colors .profile .sensible.tmux .tmux.conf .tmux.conf.local"
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

echo "Installing dotfiles..."
installDotfiles
installConfig
echo "Done!"

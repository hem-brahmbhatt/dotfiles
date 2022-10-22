#!/bin/sh -e

dotfiles=".alias .bash_profile .bashrc .commands .git-completion.bash .gitconfig .mac_colors .profile .sensible.tmux .tmux.conf.local"
config="nvim kitty"
dotfilesPath="/Users/hbrahmbhatt/Projects/dotfiles"

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
    (cd ~ && ln -s ${dotfilesPath}/${dotfile} || continuePrompt)
  done
}

installConfig() {
  for configFolder in ${config}; do
    (cd ~/.config && ln -s ${dotfilesPath}/${configFolder} || continuePrompt)
  done
}

installDotTmuxConfig() {
  (cd ~ && ln -s ${dotfilesPath}/repos/.tmux/.tmux.conf)
}

# iTerm2 has support for symlinking preference file on master, but it's not released yet. In the meantime, the file is manually copied.
installITerm2Config() {
  # (cd ~/Library/Preferences/ && ln -s ${dotfilesPath}/com.googlecode.iterm2.plist)
  cp com.googlecode.iterm2.plist ~/Library/Preferences/
}

echo "Installing dotfiles..."
installDotfiles
installConfig
installDotTmuxConfig
installITerm2Config
echo "Done!"

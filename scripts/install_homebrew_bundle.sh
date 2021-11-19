#!/bin/sh -e

installBundles() {
	printf "Install $1 homebrew applications? (y/N)? "
	read -r REPLY
	case "${REPLY}" in
		y|Y ) ;;
		* ) return ;;
	esac
  brew bundle install --file=~/Projects/dotfiles/Brewfile-$1 || echo "INFO: Some applications were already installed."
  brew bundle check --file=~/Projects/dotfiles/Brewfile-$1
}

# brew update && brew upgrade
installBundles personal
installBundles work

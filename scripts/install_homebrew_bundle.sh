#!/bin/sh -e

brew update && brew upgrade
brew bundle install --file=~/Projects/dotfiles/Brewfile || echo "INFO: Some applications were already installed."
brew bundle check --file=~/Projects/dotfiles/Brewfile

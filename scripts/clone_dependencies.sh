#!/bin/sh -e

repos="gpakosz/.tmux sumneko/lua-language-server Microsoft/python-language-server"

cloneContinue() {
  printf "Continue (Y/n)?"
  read -r REPLY
  case "${REPLY}" in
    n|N ) echo "Aborting!"; exit 1 ;;
    * ) return ;;
  esac
}

clone() {
  mkdir -p ~/Projects/dotfiles/repos
  for repo in ${repos}; do
    (cd ~/Projects/dotfiles/repos && git clone "git@github.com:${repo}.git" || cloneContinue "${repo}")
  done
}

echo "Cloning dependencies..."
clone
echo "WARNING: Some dependencies may need building after cloning!"
echo "Done!" 

#! /bin/sh

NPM_PACKAGES=(
  "diagnostic-languageserver"
  "vim-language-server"
  "sql-language-server"
  "typescript-language-server"
  "vscode-langservers-extracted"
  # "vscode-css-languageserver-bin"
  # "vscode-html-languageserver-bin"
  "bash-language-server"
  "typescript"
  "eslint"
  "prettier"
)

echo "installing packages..."
npm install --global ${NPM_PACKAGES[@]}
echo "🎉 installation completed."

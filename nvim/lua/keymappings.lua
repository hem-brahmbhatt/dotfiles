vim.cmd 'command CopyFilepath :!echo % | pbcopy'

vim.cmd 'command ReloadConfig :source $MYVIMRC && echo \'Reloaded neovim config!\'<cr>'

--vim.keymap.set("n", "<C-w>=", function() vim.cmd [[tabedit]] end)

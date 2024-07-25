vim.cmd 'command CopyFilepath :!echo % | pbcopy'

vim.cmd 'command ReloadConfig :source $MYVIMRC && echo \'Reloaded neovim config!\'<cr>'

--vim.keymap.set("n", "<C-w>=", function() vim.cmd [[tabedit]] end)

vim.keymap.set({"v", "n"}, "=", function()
  vim.lsp.buf.format({
    filter = function(client) return client.name ~= "tsserver" end
  })
end)

vim.keymap.set({"v", "n"}, "*", "*N")

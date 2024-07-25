require('ufo').setup()

--vim.api.nvim_create_autocmd({'WinNew', 'VimEnter'}, {
    --pattern = '*',
    --callback = function()
        --vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
    --end
--})

--
-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

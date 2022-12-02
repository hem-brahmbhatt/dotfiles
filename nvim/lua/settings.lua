-- Map leader to comma
vim.g.mapleader = ','

-- nvim-compe
vim.opt.completeopt = "menu,menuone,noselect,preview"

local utils = require('utils')

local indent = 4

vim.cmd 'syntax enable'
vim.cmd 'filetype plugin indent on'
vim.opt.modeline = false
vim.opt.undofile = true -- save undos to disk
vim.opt.number = true -- show line numbers
vim.opt.updatetime = 1000 -- shows hover dialogs quicker than the default 4 seconds
vim.opt.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = "*rplus*.json",
    callback = function() vim.bo.filetype = "jsonc" end
})

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = "*.bml",
    callback = function() vim.bo.filetype = "xml" end
})

utils.opt('b', 'shiftwidth', indent)                -- Use indents of 4 spaces
utils.opt('b', 'expandtab', true)                   -- Tabs are spaces, not tabs
utils.opt('b', 'tabstop', indent)                   -- An indentation every four columns
utils.opt('b', 'softtabstop', indent)               -- Let backspace delete indent
utils.opt('w', 'spell', false)
utils.opt('w', 'wrap', true)			    -- enable wrapping
utils.opt('w', 'list', false)			    -- don't render special chars (tabs, trails, ...)
utils.opt('o', 'mouse', 'a')

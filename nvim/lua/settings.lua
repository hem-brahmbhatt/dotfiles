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

--vim.api.nvim_set_hl(0, 'TabLineSel', { reverse = true })
--highlight DiagnosticError ctermfg=203 guifg=#f44747
--vim.api.nvim_set_hl(0, 'DiagnosticError', { ctermfg=203, fg='#f44747' })

utils.opt('o', 'fillchars', [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]])
utils.opt('o', 'foldcolumn', '1') -- '0' is not bad
utils.opt('o', 'foldlevel', 99) -- Using ufo provider need a large value, feel free to decrease the value
utils.opt('o', 'foldlevelstart', 99)
utils.opt('o', 'foldenable', true)

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = "*rplus*.json",
    callback = function() vim.bo.filetype = "jsonc" end
})

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = "*.bml",
    callback = function() vim.bo.filetype = "xml" end
})

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = "*[Jj]enkins*",
    callback = function() vim.bo.filetype = "groovy" end
})

vim.api.nvim_create_autocmd({"TabClosed"}, {
    callback = function() vim.cmd('tabp') end
})

utils.opt('b', 'shiftwidth', indent)                -- Use indents of 4 spaces
utils.opt('b', 'expandtab', true)                   -- Tabs are spaces, not tabs
utils.opt('b', 'tabstop', indent)                   -- An indentation every four columns
utils.opt('b', 'softtabstop', indent)               -- Let backspace delete indent
utils.opt('w', 'spell', false)
utils.opt('w', 'wrap', true)			    -- enable wrapping
utils.opt('w', 'list', false)			    -- don't render special chars (tabs, trails, ...)
utils.opt('o', 'mouse', 'a')
utils.opt('o', 'splitright', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'hidden', false)             -- don't allow changed buffers to be closed or navigated away from
utils.opt('o', 'confirm', true)             -- prompt to save if navigating away from buffer with unsaved changes
--utils.opt('o', 'dispatch_tmux_height', '50% -h')

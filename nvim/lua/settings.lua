local utils = require('utils')

local cmd = vim.cmd
local indent = 2

cmd 'syntax enable'
cmd 'filetype plugin indent on'
cmd 'set number'  -- show line numbers

utils.opt('b', 'shiftwidth', indent)                -- Use indents of 4 spaces
utils.opt('b', 'expandtab', true)                   -- Tabs are spaces, not tabs
utils.opt('b', 'tabstop', indent)                   -- An indentation every four columns
utils.opt('b', 'softtabstop', indent)               -- Let backspace delete indent
utils.opt('w', 'spell', false)
utils.opt('w', 'wrap', true)			    -- enable wrapping
utils.opt('w', 'list', false)			    -- don't render special chars (tabs, trails, ...)
utils.opt('o', 'mouse', 'a')

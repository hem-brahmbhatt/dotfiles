local utils = require('utils')
local cmd = vim.cmd

utils.opt('o', 'termguicolors', true)
cmd 'colorscheme codedark'

vim.api.nvim_set_hl(0, 'DiagnosticError', { ctermfg=203, fg='#f44747' })
vim.api.nvim_set_hl(0, 'Visual', { bg='#373737' })
vim.api.nvim_set_hl(0, "ZenBg", { ctermbg=0, bg=0 })

--[[ DiagnosticError xxx ctermfg=1 guifg=Red
DiagnosticWarn xxx ctermfg=3 guifg=Orange
DiagnosticInfo xxx ctermfg=4 guifg=LightBlue
DiagnosticHint xxx ctermfg=7 guifg=LightGrey ]]

--[[ cmd 'highlight DiagnosticError guifg=Orange'
cmd 'highlight DiagnosticWarn guifg=Yellow' ]]

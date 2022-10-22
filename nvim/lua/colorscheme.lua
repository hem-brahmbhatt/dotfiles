local utils = require('utils')
local cmd = vim.cmd

utils.opt('o', 'termguicolors', true)
cmd 'colorscheme codedark'


--[[ DiagnosticError xxx ctermfg=1 guifg=Red
DiagnosticWarn xxx ctermfg=3 guifg=Orange
DiagnosticInfo xxx ctermfg=4 guifg=LightBlue
DiagnosticHint xxx ctermfg=7 guifg=LightGrey ]]

--[[ cmd 'highlight DiagnosticError guifg=Orange'
cmd 'highlight DiagnosticWarn guifg=Yellow' ]]

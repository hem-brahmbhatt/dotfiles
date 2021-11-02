local utils = require('utils')

-- utils.map('n', ',n', ':NERDTreeFind<CR>') -- Reveal file in tree

vim.cmd 'command CopyFilepath :!echo % | pbcopy'

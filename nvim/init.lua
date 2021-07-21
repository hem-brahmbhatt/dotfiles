-- Map leader to comma
vim.g.mapleader = ','

-- nvim-compe
vim.o.completeopt = "menuone,noselect"

local fn = vim.fn
local execute = vim.api.nvim_command

require('settings')        -- Sensible defaults
require('keymappings')     -- Key mappings
require('lsp_lua')         -- Language Server - lua
require('lsp_typescript')  -- Language Server - typescript
require('lsp_python')      -- Language Server - python
require('colorscheme')     -- Colours
-- require('completion')    -- autocomplete and hints

-- Auto install packer.nvim if not exists
local data_path = fn.stdpath('data') -- ~/.local/share/nvim
local install_path = data_path..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end
vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

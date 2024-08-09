require("plugins")
require("settings") -- Sensible defaults
require("keymappings") -- Key mappings
require("lsp_lua") -- Language Server - lua
require("lsp_typescript") -- Language Server - typescript

--switched off since it enables itself even when there are no deno.json files in the local directory...
--require('lsp_deno')          -- Language Server - deno, a JS and TS runtime

-- too slow, using null-ls instead
--require('lsp_diagnosticls')  -- Language Server - eslint and prettier

-- deprecated, using efm instead
--require('lsp_null-ls')       -- Language server - eslint

require("lsp_efm") -- Language server - efm - general purpose language server, using for linting
require("lsp_vim") -- Language Server - vim
require("lsp_json") -- Language Server - json
require("lsp_bash") -- Language Server - bash
require("lsp_html") -- Language Server - html
require("lsp_ocaml") -- Language Server - ocaml
require("lsp_python") -- Language Server - python
require("lsp_clangd") -- Language Server - clang

-- Importing setup files.
-- IMPORTANT: Make sure setup files are named differently to plugins
require("colorscheme") -- Colours
require("icons")
require("completion") -- autocomplete and hints
require("sidebar") -- Sidebar
require("session") -- Session Management
require("glowsetup") -- Markdown preview
require("gitsignssetup") -- Git lens
require("ufosetup") -- Code folding
require("tablinesetup") -- Tabs
require("zensetup") -- Focus on one pane
require("indentsetup")

require("telescopesetup") -- file searcher
require("treesittersetup") -- file searcher
require("nvim-lspconfig") -- LSP settings
require("fidgetsetup") -- LSP progress
require("lsp_signaturesetup") -- Autocomplete helper
require("masonsetup") -- Language server manager

-- Source .vim files. This is sourced by default, but sourcing them here
-- enables them to be sourced whenever $MYVIMRC is reloaded
local configPath = vim.fn.stdpath("config") .. "/plugin"
local vimFiles = vim.fn.readdir(configPath)

local function sourceVim(filename)
  vim.cmd("source " .. vim.fn.stdpath("config") .. "/plugin/" .. filename)
end

for k, v in pairs(vimFiles) do
  sourceVim(v)
end

Dump = require("utils").dump


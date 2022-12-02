local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_on_attach = require('utils').lsp_on_attach

require'lspconfig'.tsserver.setup{
  capabilities = capabilities,
  on_attach = lsp_on_attach
}

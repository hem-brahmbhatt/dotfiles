local capabilities = require('cmp_nvim_lsp').default_capabilities()

capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}

require'lspconfig'.ocamllsp.setup{
  capabilities = capabilities
}

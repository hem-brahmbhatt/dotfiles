local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_on_attach = require('utils').lsp_on_attach

capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}

local function rename_file()
    local source_file, target_file

    vim.ui.input({
        prompt = "Source : ",
        completion = "file",
        default = vim.api.nvim_buf_get_name(0)
    },
        function(input)
            source_file = input
        end
    )
    vim.ui.input({
        prompt = "Target : ",
        completion = "file",
        default = source_file
    },
        function(input)
            target_file = input
        end
    )

    local params = {
        command = "_typescript.applyRenameFile",
        arguments = {
            {
                sourceUri = source_file,
                targetUri = target_file,
            },
        },
        title = ""
    }

    vim.lsp.util.rename(source_file, target_file)
    vim.lsp.buf.execute_command(params)
end

require("lspconfig").tsserver.setup {
    capabilities = capabilities,
    on_attach = lsp_on_attach,
    commands = {
        LspRenameFile = {
            rename_file,
            description = "Rename File"
        },
    }
}

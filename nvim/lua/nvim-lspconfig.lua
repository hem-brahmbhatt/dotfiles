local buf_get_var = require("utils").buf_get_var

vim.api.nvim_create_user_command('LspDefinition', vim.lsp.buf.definition, {})
vim.api.nvim_create_user_command('LspHover', vim.lsp.buf.hover, {})
vim.api.nvim_create_user_command('LspDiagnostic', vim.diagnostic.open_float, {})
vim.api.nvim_create_user_command('LspReferences', function()
    vim.lsp.buf.references({ includeDeclaration = false })
end, {})
vim.api.nvim_create_user_command('LspImplementations', vim.lsp.buf.implementation, {})
vim.api.nvim_create_user_command('LspAttach', function(opts)
    vim.lsp.buf_attach_client(
        vim.api.nvim_get_current_buf(),
        tonumber(opts.args)
    )
end, { nargs = 1 })

vim.api.nvim_create_autocmd(
    "CursorHold",
    {
        pattern = { "*" },
        callback = function()
            if buf_get_var(0, "hoverActionSupported") and not require("cmp").visible() then
                vim.lsp.buf.hover({ focusable = false })
            end
        end
    }
)

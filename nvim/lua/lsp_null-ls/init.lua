local null_ls = require("null-ls")

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local format_on_save_enabled = false

local function format_on_save(client, bufnr)
    if format_on_save_enabled and client.supports_method("textDocument/formatting") then
        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
                -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                vim.lsp.buf.format({
                    bufnr = bufnr,
                    filter = function(filter_client) return filter_client.name ~= "tsserver" end
                })
            end,
        })
    else
        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    end
end

null_ls.setup({
    debug = true,
    sources = {
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.formatting.prettier
    },
    on_attach = format_on_save
})

vim.api.nvim_create_user_command(
    "ESLintToggle",
    function()
        null_ls.toggle({name="eslint"})
    end,
    {}
)

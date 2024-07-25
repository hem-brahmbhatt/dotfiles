require('glow').setup({
    width = 120
})

vim.api.nvim_create_user_command('MarkdownPreview', 'Glow', {})

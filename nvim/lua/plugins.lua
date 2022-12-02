-- Auto install packer.nvim if not exists
-- The root path can be printed by running :lua print(vim.fn.stdpath('data'))
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
--[[ if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end ]]

vim.cmd [[packadd packer.nvim]]
-- vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

return require('packer').startup(function(use)

    -- Packer can manage itself as an optional plugin
    use { 'wbthomason/packer.nvim', opt = true }

    -- Color scheme
    -- use { 'sainnhe/gruvbox-material' }
    use { 'hem-brahmbhatt/vim-code-dark' }

    -- Fuzzy finder
    use {
        'felixge/telescope.nvim',
        branch = "fname_direction",
        requires = {
            { 'nvim-lua/popup.nvim' },
            { 'nvim-lua/plenary.nvim' },
            { "nvim-telescope/telescope-live-grep-args.nvim" }
        },
        config = function()
            require("telescope").load_extension("live_grep_args")
        end
    }

    -- Language Server Protocol
    use { 'neovim/nvim-lspconfig' }
    use { 'nvim-treesitter/nvim-treesitter' }
    use {
        'jose-elias-alvarez/null-ls.nvim',
        requires = { "nvim-lua/plenary.nvim" }
    }
    -- use { 'folke/lsp-colors.nvim' }

    -- Completion
    use { 'nvim-lua/completion-nvim' }

    -- Lua development
    use { 'hem-brahmbhatt/nlua.nvim' }

    -- Vim dispatch
    -- use { 'tpope/vim-dispatch' } -- need to try this out!

    -- Fugitive for Git
    use { 'tpope/vim-fugitive' }
    use { 'tpope/vim-rhubarb' }
    use { 'airblade/vim-gitgutter' }

    -- Vim vinegar for file navigation
    use { 'tpope/vim-vinegar' }

    -- Autocompletion, integrates with LSP
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-cmdline' }
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-vsnip' }
    use { 'hrsh7th/vim-vsnip' }

    -- Session management
    use { 'rmagatti/auto-session', }

    -- Icons, font files need to be installed from dotfiles
    use { 'onsails/lspkind.nvim' }
    use { 'nvim-tree/nvim-web-devicons' }

    -- Sidebar
    use { 'sidebar-nvim/sidebar.nvim' }

    -- Surround, e.g. tags, quotes
    use { 'tpope/vim-surround' }

    -- Airline
    use { 'vim-airline/vim-airline' }


    -- Markdown preview, unfortunately installs renderer at runtime, see https://github.com/ellisonleao/glow.nvim/blob/main/lua/glow/init.lua#L272-L293
    use { 'ellisonleao/glow.nvim' }

    -- Search and replace
    use { 'junegunn/fzf', dir = '~/.fzf', run = './install --all' }
    use { 'junegunn/fzf.vim' }

    -- Search and replace via lua
    use { 'vijaymarupudi/nvim-fzf' }
    use { 'vijaymarupudi/nvim-fzf-commands' }

    -- Commenter
    use { 'preservim/nerdcommenter' }
    -- use { 'b3nj5m1n/kommentary' }

    -- Better unix shell commands
    use { 'tpope/vim-eunuch' }

    -- Multiple cursors
    use { 'mg979/vim-visual-multi' }

    if packer_bootstrap then
        require('packer').sync()
    end
end)

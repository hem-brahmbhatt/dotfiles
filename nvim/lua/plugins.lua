return require('packer').startup(function(use)

  -- Packer can manage itself as an optional plugin
  use { 'wbthomason/packer.nvim', opt = true }

  -- Color scheme
  -- use { 'sainnhe/gruvbox-material' }
  use { 'tomasiser/vim-code-dark' }

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- Language Server Protocol
  use { 'neovim/nvim-lspconfig' }

  -- Completion
  use { 'nvim-lua/completion-nvim' }

  -- Lua development
  use { 'tjdevries/nlua.nvim' }


  -- Vim dispatch
  -- use { 'tpope/vim-dispatch' } -- need to try this out!

  -- Fugitive for Git
  use { 'tpope/vim-fugitive' }
  use { 'tpope/vim-rhubarb' }

  -- Vim vinegar for file navigation
  use { 'tpope/vim-vinegar' }

  -- Autocompletion, integrates with LSP
  use { 'hrsh7th/nvim-compe' }

  -- Surround, e.g. tags, quotes
  use { 'tpope/vim-surround' }

  -- Airline
  use { 'vim-airline/vim-airline' }

  -- :MarkdownPreview, had to run npm install manually after cd-ing into plugin
  use { 'iamcco/markdown-preview.nvim' }

  -- Search and replace
  use { 'junegunn/fzf' , dir = '~/.fzf', run = './install --all' }
  use { 'junegunn/fzf.vim' }

  -- Search and replace via lua
  use { 'vijaymarupudi/nvim-fzf' }
  use { 'vijaymarupudi/nvim-fzf-commands' }

  -- Commenter
  use { 'b3nj5m1n/kommentary' }

end)

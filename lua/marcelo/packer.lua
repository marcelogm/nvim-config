vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Colorscheme
  use('folke/tokyonight.nvim')

  -- Plugin manager
  use('wbthomason/packer.nvim')

  -- Text highlight, UI and navigation
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    requires = {
      'tree-sitter/tree-sitter-c'
    }
  }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = { { 'nvim-tree/nvim-web-devicons' } }
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-ui-select.nvim' },
      { 'nvim-telescope/telescope-dap.nvim' }
    }
  }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {
    'folke/which-key.nvim',
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require('which-key').setup {}
    end
  }

  -- Git (I should remove this, almost never use)
  use('sindrets/diffview.nvim')

  -- Lsp and snippets
  use('mfussenegger/nvim-jdtls')
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'hrsh7th/cmp-nvim-lsp' },
    }
  }
  use {
    'L3MON4D3/LuaSnip',
    dependencies = 'rafamadriz/friendly-snippets'
  }
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      { 'hrsh7th/cmp-path' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-cmdline' }
    }
  }
  use('saadparwaiz1/cmp_luasnip')
  use('github/copilot.vim')

  -- null-ls reloaded!
  use('nvimtools/none-ls.nvim')

  -- Template snippets
  use {
    'glepnir/template.nvim',
    cmd = { 'Template', 'TemProject' },
    config = function()
      require('template').setup {
        temp_dir = '~/.config/nvim/templates'
      }
    end
  }
end)

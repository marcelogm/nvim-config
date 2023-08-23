vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use('nvimdev/guard.nvim')
  use('wbthomason/packer.nvim')
  use('tree-sitter/tree-sitter-c')
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('folke/tokyonight.nvim')
  use('sindrets/diffview.nvim')
  use('dinhhuy258/git.nvim')
  use('mfussenegger/nvim-jdtls')
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use('nvim-telescope/telescope-dap.nvim')
  use('vim-test/vim-test')
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
    "smjonas/inc-rename.nvim",
    config = function()
      require("inc_rename").setup()
    end,
  }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = { { 'nvim-tree/nvim-web-devicons' } }
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-ui-select.nvim' }
    }
  }
  use {
    'folke/which-key.nvim',
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require('which-key').setup {}
    end
  }
  use('L3MON4D3/LuaSnip', {
    dependencies = 'rafamadriz/friendly-snippets'
  })
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-cmdline')
  use('hrsh7th/nvim-cmp')
  use('saadparwaiz1/cmp_luasnip')
  use {
    'glepnir/template.nvim',
    cmd = { 'Template', 'TemProject' },
    config = function()
      require('template').setup {
        temp_dir = '~/.config/nvim/templates'
      }
    end
  }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
end)

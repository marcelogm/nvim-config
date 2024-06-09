local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not vim.loop.fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add {
  -- Colorscheme
  'folke/tokyonight.nvim',

  -- Text highlight, UI and navigation
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    requires = {
      'tree-sitter/tree-sitter-c'
    }
  },
  {
    'nvim-tree/nvim-tree.lua',
    requires = { { 'nvim-tree/nvim-web-devicons' } }
  },
  {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-ui-select.nvim' },
      { 'nvim-telescope/telescope-dap.nvim' }
    }
  },
  { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
  {
    'folke/which-key.nvim',
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require('which-key').setup {}
    end
  },

  -- Git (I should remove this, almost never use)
  'sindrets/diffview.nvim',

  -- Lsp and snippets
  'mfussenegger/nvim-jdtls',
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'hrsh7th/cmp-nvim-lsp' },
    }
  },
  {
    'L3MON4D3/LuaSnip',
    dependencies = 'rafamadriz/friendly-snippets'
  },
  {
    'hrsh7th/nvim-cmp',
    requires = {
      { 'hrsh7th/cmp-path' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-cmdline' }
    }
  },
  'saadparwaiz1/cmp_luasnip',
  'github/copilot.vim',
  'jubnzv/virtual-types.nvim',

  -- null-ls reloaded!
  {
    "nvimtools/none-ls.nvim",
    requires = {
      "nvimtools/none-ls-extras.nvim",
    },
  },

  -- Template snippets
  {
    'glepnir/template.nvim',
    cmd = { 'Template', 'TemProject' },
    config = function()
      require('template').setup {
        temp_dir = '~/.config/nvim/templates'
      }
    end
  },

  -- Testing new features
  'onsails/lspkind.nvim',
  'ray-x/lsp_signature.nvim',
  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()
    end,
  },
  {
    'ojroques/nvim-lspfuzzy',
    requires = {
      {'junegunn/fzf'},
      {'junegunn/fzf.vim'},  -- to enable preview (optional)
    },
  }
}

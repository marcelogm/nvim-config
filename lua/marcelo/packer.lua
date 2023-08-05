vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use('wbthomason/packer.nvim')
	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
	use('folke/tokyonight.nvim')
	use('sindrets/diffview.nvim')
	use('dinhhuy258/git.nvim')
	use('mfussenegger/nvim-jdtls')
  use('mfussenegger/nvim-dap')	
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },
			{ 'neovim/nvim-lspconfig' },
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'L3MON4D3/LuaSnip' },
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
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use {
		'folke/which-key.nvim',
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require('which-key').setup {}
		end
	}
end)

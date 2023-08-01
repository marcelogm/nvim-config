vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'folke/which-key.nvim',
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require('which-key').setup {
      
      }
    end
  }
  use('folke/tokyonight.nvim')
  use { 
    'nvim-tree/nvim-tree.lua', 
    requires={ { 'nvim-tree/nvim-web-devicons' } } 
  }
  use('dinhhuy258/git.nvim')
end)

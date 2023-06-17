vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  
 use 'wbthomason/packer.nvim'
  
 use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
   -- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
	}

 use "lukas-reineke/indent-blankline.nvim"
 
 --use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
 --Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
 
 use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
     }

 use {'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons'}
 
 use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
  end}

 use {'lervag/vimtex'}




end)

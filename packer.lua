vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = { {'nvim-lua/plenary.nvim'} }
        }

    use "lukas-reineke/indent-blankline.nvim"

     --use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
     --Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
        }

    -- use {'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons'}
    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
        end
        }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
            pcall(vim.cmd, 'MasonUpdate')
            end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
               
        }
        }


    use {
        "williamboman/mason.nvim",
        run = ":MasonUpdate" -- :MasonUpdate updates registry contents
        }

    use 'lervag/vimtex'
 
--theme_nvim
    use {'nyoom-engineering/oxocarbon.nvim'}

    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    ---Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    use 'p00f/nvim-ts-rainbow'

    use {
        'mawkler/modicator.nvim',
        after = 'onedark.nvim', -- Add your colorscheme plugin here
        setup = function()
        -- These are required for Modicator to work
        vim.o.cursorline = true
        vim.o.number = true
        vim.o.termguicolors = true
        end,
            config = function()
            require('modicator').setup({
            show_warnings = true,
          })
          end
        }

    use 'tpope/vim-commentary'

    use {'jupyter-vim/jupyter-vim',}

end)


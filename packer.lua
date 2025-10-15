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
    -- use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
    use {'nvim-tree/nvim-web-devicons'}

    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
        end
        }

    -- config_auto_completation
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'           -- Plugin base de autocompletado
    use 'hrsh7th/cmp-buffer'         -- fuente: buffer
    use 'hrsh7th/cmp-path'           -- fuente: rutas de archivos
    use 'hrsh7th/cmp-nvim-lsp'       -- fuente LSP
    use 'hrsh7th/cmp-nvim-lua'       -- fuente API de Lua de nvim (opcional)
    use 'L3MON4D3/LuaSnip'           -- motor de snippets
    use 'saadparwaiz1/cmp_luasnip'   -- integración snippets y nvim-cmp
    use 'williamboman/mason-lspconfig.nvim'
    -------

    use {
        "williamboman/mason.nvim",
        run = ":MasonUpdate" -- :MasonUpdate updates registry contents
        }

    use 'lervag/vimtex'
 
    --theme_nvim
    use {'nyoom-engineering/oxocarbon.nvim'}
    -- use {"sekke276/dark_flat.nvim"}
    -- use {"rebelot/kanagawa.nvim"}    
    -- use {
    --   "killitar/obscure.nvim",
    --   lazy = false,
    --   priority = 1000,
    --   opts = {}
    -- }
    -- use {
    --   "eldritch-theme/eldritch.nvim",
    --   lazy = false,
    --   priority = 1000,
    --   opts = {},
    -- }
    -- use { "zootedb0t/citruszest.nvim" }
    -- use {'maxmx03/fluoromachine.nvim'}
    


    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    ---Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    -- use 'p00f/nvim-ts-rainbow'

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

    -- use {'jupyter-vim/jupyter-vim',}

    -- install without yarn or npm  markdown viwer
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })


end)


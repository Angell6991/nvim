vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use "lukas-reineke/indent-blankline.nvim"


    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

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

    -- use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

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

    -- install without yarn or npm  markdown viwer
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })


end)


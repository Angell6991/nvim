vim.opt.background = "dark" -- set this to dark or light
-- vim.cmd.colorscheme "oxocarbon"
vim.cmd("colorscheme oxocarbon")

-- Establece el fondo transparente
vim.cmd([[highlight Normal ctermbg=NONE guibg=NONE]])
vim.cmd([[highlight SignColumn ctermbg=NONE guibg=NONE]])
vim.cmd([[highlight NormalNC ctermbg=NONE guibg=NONE]])
vim.cmd([[highlight LineNr ctermbg=NONE guibg=NONE]])
vim.cmd([[highlight EndOfBuffer ctermbg=NONE guibg=NONE]])

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

-- Personalizar Telescope
vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })       -- Fondo transparente
vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#962a6b" })    -- Ajusta el color del borde
vim.api.nvim_set_hl(0, "TelescopePromptNormal", { fg = "#b9b9b9" }) -- Ajusta el color del texto en el prompt
vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { fg = "#b9b9b9" }) -- Ajusta el color del texto en los resultados
vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "none" }) -- Ajusta el color del fondo de la vista previa
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "#ff16a3" , bg = "none" }) -- Borde  en el prompt
vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { fg = "#ff16a3" , bg = "none"}) -- Título  en la vista previa
vim.api.nvim_set_hl(0, "TelescopePromptTitle", { fg = "#ff16a3" , bg = "none"}) -- Título  en el prompt

-- Aplicar el esquema de colores para Mason
vim.api.nvim_set_hl(0, "MasonNormal", { bg = "#1c1c1c" ,fg ="#dedede" }) -- Fondo 
vim.api.nvim_set_hl(0, "MasonHighlight", { fg = "#ff16a3" }) -- Color del texto resaltado 
vim.api.nvim_set_hl(0, "MasonHighlightSecondary", { fg = "#ff16a3" }) -- Color del texto resaltado secundario 
vim.api.nvim_set_hl(0, "MasonHighlightBlockBold", { bg = "#ff16a3", fg = "#1c1c1c", bold = true }) -- Bloque resaltado  en negrita
vim.api.nvim_set_hl(0, "MasonMuted", { fg = "#555555" }) -- Texto atenuado en gris
vim.api.nvim_set_hl(0, "MasonMutedBlock", { bg = "#1c1c1c", fg = "#ff16a3" }) -- Bloque atenuado en gris con texto blanco
vim.api.nvim_set_hl(0, "MasonHeading", { fg = "#979797" }) -- Color del encabezado verde claro
vim.api.nvim_set_hl(0, "MasonHeader", { fg = "#962a6b", bg = "#000000", bold = true }) -- Encabezado 

vim.api.nvim_set_hl(0, "MasonHighlightBlock", { bg = "#ff16a3", fg = "#1c1c1c" }) -- Bloque resaltado 
vim.api.nvim_set_hl(0, "MasonHighlightBlockSecondary", { bg = "#ff16a3", fg = "#1c1c1c" }) -- Bloque resaltado secundario
vim.api.nvim_set_hl(0, "MasonHighlightBlockBoldSecondary", { bg = "#fe2fb9", fg = "#ffffff", bold = true }) -- Bloque resaltado secundario en rosa con texto blanco y en negrita
vim.api.nvim_set_hl(0, "MasonLink", { fg = "#fe2fb9", underline = true }) -- Enlaces en rosa con subrayado
vim.api.nvim_set_hl(0, "MasonError", { fg = "#ff0000" }) -- Errores en rojo
vim.api.nvim_set_hl(0, "MasonWarning", { fg = "#ffaa00" }) -- Advertencias en naranja
vim.api.nvim_set_hl(0, "MasonMutedBlockBold", { bg = "#555555", fg = "#ffffff", bold = true }) -- Bloque atenuado en gris con texto blanco y en negrita






-- require("dark_flat").setup({
--     transparent = true,
--     colors = {},
--     themes = function(colors)
--         return {}
--     end,
--     italics = true,
-- })


-- require('kanagawa').setup({
--     compile = false,             -- enable compiling the colorscheme
--     undercurl = true,            -- enable undercurls
--     commentStyle = { italic = true },
--     functionStyle = {},
--     keywordStyle = { italic = true},
--     statementStyle = { bold = true },
--     typeStyle = {},
--     transparent = true,         -- do not set background color
--     dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
--     terminalColors = true,       -- define vim.g.terminal_color_{0,17}
--     colors = {                   -- add/modify theme and palette colors
--         palette = {},
--         theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
--     },
--     overrides = function(colors) -- add/modify highlights
--         return {}
--     end,
--     theme = "wave",              -- Load "wave" theme when 'background' option is not set
--     background = {               -- map the value of 'background' option to a theme
--         dark = "wave",           -- try "dragon" !
--         light = "lotus"
--     },
-- })
-- -- setup must be called before loading
-- -- vim.cmd("colorscheme kanagawa")
-- -- vim.cmd("colorscheme kanagawa-wave")
-- vim.cmd("colorscheme kanagawa-dragon")
-- -- vim.cmd("colorscheme kanagawa-lotus")


-- require("obscure").setup({
--     transparent = true,
--     styles = {
--         booleans = { italic = true, bold = true },
--     },
--     integrations = {
--         noice = false,
--         telescope = true,
--     },
--     highlight_overrides = {
--         -- Comment = { bg = "#ffffff" }
--     }
-- })
-- vim.cmd[[colorscheme obscure]]


--require("eldritch").setup({
--  -- your configuration comes here
--  -- or leave it empty to use the default settings
--  transparent = true, -- Enable this to disable setting the background color
--  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
--  styles = {
--    -- Style to be applied to different syntax groups
--    -- Value is any valid attr-list value for `:help nvim_set_hl`
--    comments = { italic = true },
--    keywords = { italic = true },
--    functions = {},
--    variables = {},
--    -- Background styles. Can be "dark", "transparent" or "normal"
--    sidebars = "dark", -- style for sidebars, see below
--    floats = "dark", -- style for floating windows
--  },
--  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
--  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
--  dim_inactive = false, -- dims inactive windows, transparent must be false for this to work
--  lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold

--  --- You can override specific color groups to use other groups or a hex color
--  --- function will be called with a ColorScheme table
--  ---@param colors ColorScheme
--  on_colors = function(colors) end,

--  --- You can override specific highlights to use other groups or a hex color
--  --- function will be called with a Highlights and ColorScheme table
--  ---@param highlights Highlights
--  ---@param colors ColorScheme
--  on_highlights = function(highlights, colors) end,
--})
--vim.cmd[[colorscheme eldritch]]


-- require("citruszest").setup({
--     option = {
--         transparent = true, -- Enable/Disable transparency
--         bold = false,
--         italic = true,
--     },
--     -- Override default highlight style in this table
--     -- E.g If you want to override `Constant` highlight style
--     style = {
--     -- This will change Constant foreground color and make it bold.
--     Constant = { fg = "#FFFFFF", bold = true}
--     },
-- })
-- vim.cmd("colorscheme citruszest")


-- local fm = require 'fluoromachine'
-- fm.setup {
--     glow = true,  ---bulean
--     transparent = true, ---bulean
--     theme = 'fluoromachine',
--     -- theme = 'retrowave',
--     -- theme = 'delta',
--     plugins = {
--         telescope = true,
--         lspconfig = true,
--         bufferline = true,
--         treesitter = true,
--     },
-- }
-- vim.cmd.colorscheme('fluoromachine')




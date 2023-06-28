vim.opt.background = "dark" -- set this to dark or light
vim.cmd.colorscheme "oxocarbon"

-- Establece el fondo transparente
vim.cmd([[highlight Normal ctermbg=NONE guibg=NONE]])
vim.cmd([[highlight SignColumn ctermbg=NONE guibg=NONE]])
vim.cmd([[highlight NormalNC ctermbg=NONE guibg=NONE]])
vim.cmd([[highlight LineNr ctermbg=NONE guibg=NONE]])
vim.cmd([[highlight EndOfBuffer ctermbg=NONE guibg=NONE]])

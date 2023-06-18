-- Habilitar el filetype, plugin y indent para VimTeX
vim.cmd('filetype plugin indent on')

-- Configurar el método de visualización de VimTeX
vim.g.vimtex_view_method = 'zathura'

-- Configurar el visor general de VimTeX
vim.g.vimtex_view_general_viewer = 'okular'
vim.g.vimtex_view_general_options = '--unique file:@pdf\\#src:@line@tex'

-- Configurar el método de compilación de VimTeX
vim.g.vimtex_compiler_method = 'latexmk'


-- Atajo de teclado para compilar Vimtex
vim.api.nvim_set_keymap('n', '<leader>ll', ':VimtexCompile<CR>', { silent = true, noremap = true })

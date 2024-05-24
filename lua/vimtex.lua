-----------------------------------------------------------------------
---------Configuración_para_compilar_con_latexmk_conf_defaull----------
-----------------------------------------------------------------------

-- -- Habilitar el filetype, plugin y indent para VimTeX
-- vim.cmd('filetype plugin indent on')

-- -- Configurar el método de visualización de VimTeX
-- vim.g.vimtex_view_method = 'zathura'

-- -- Configurar el visor general de VimTeX
-- vim.g.vimtex_view_general_viewer = 'okular'
-- vim.g.vimtex_view_general_options = '--unique file:@pdf\\#src:@line@tex'

-- -- Configurar el método de compilación de VimTeX
-- -- vim.g.vimtex_compiler_method = 'latexmk'
-- vim.g.vimtex_compiler_method = 'xelatex'


-- -- Atajo de teclado para compilar Vimtex
-- vim.api.nvim_set_keymap('n', '<leader>ll', ':VimtexCompile<CR>', { silent = true, noremap = true })



----------------------------------------------------------------------
----------------Configuración_para_compilar_con_xelatex---------------
----------------------------------------------------------------------

-- Habilitar el filetype, plugin y indent para VimTeX
vim.cmd('filetype plugin indent on')

-- Configurar el método de visualización de VimTeX
vim.g.vimtex_view_method = 'zathura'

-- Configurar el visor general de VimTeX
vim.g.vimtex_view_general_viewer = 'okular'
vim.g.vimtex_view_general_options = '--unique file:@pdf\\#src:@line@tex'

-- Configurar el método de compilación de VimTeX
vim.g.vimtex_compiler_method = 'latexmk'

-- Configurar latexmk para usar XeLaTeX
vim.g.vimtex_compiler_latexmk = {
    build_dir = '',
    options = {
        '-pdf',
        '-pdflatex=xelatex', -- Cambiar a lualatex si prefieres LuaLaTeX
        '-interaction=nonstopmode',
        '-synctex=1'
    }
}

-- Atajo de teclado para compilar Vimtex
vim.api.nvim_set_keymap('n', '<leader>ll', ':VimtexCompile<CR>', { silent = true, noremap = true })


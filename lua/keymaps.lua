-------------------------Aliases------------------------

local map 	= vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd 	= vim.cmd

--------------------Cambiar_Buffer-----------------------

map('n', '<S-Right>', ':bnext<CR>', default_opts)
map('n', '<S-Left>', ':bprevious<CR>', default_opts)

----------------Abrir_y_cerrar_buffer--------------------

map('n', '<leader>c', ':bd <CR>', {noremap = true, silent = true})
map('n', '<leader>n', ':enew <CR>', {noremap = true, silent = true})

-------------------Guardar_cambios-----------------------

map('n', '<leader>s', ':w <CR>', {noremap = true, silent = true})

---------------------Atajos_LaTex------------------------

map('n', '<leader>tx1', ':lua export_template("~/.config/nvim/templates-Latex/tex1.tex")<CR>', default_opts)
map('n', '<leader>tx2', ':lua export_template("~/.config/nvim/templates-Latex/tex2.tex")<CR>', default_opts)
map('n', '<leader>port', ':lua export_template("~/.config/nvim/templates-Latex/Portada.tex")<CR>', default_opts)
map('n', '<leader>book', ':lua export_template("~/.config/nvim/templates-Latex/book.tex")<CR>', default_opts)

---------------------Atajos_Python------------------------

map('n', '<leader>py1', ':lua export_template("~/.config/nvim/templates-Python/plot_01.py")<CR>', default_opts)
map('n', '<leader>py2', ':lua export_template("~/.config/nvim/templates-Python/plot_02.py")<CR>', default_opts)
map('n', '<leader>py3', ':lua export_template("~/.config/nvim/templates-Python/plot_03.py")<CR>', default_opts)
map('n', '<leader>py4', ':lua export_template("~/.config/nvim/templates-Python/plot_04.py")<CR>', default_opts)

map('n', '<leader>pyl', ':lua export_template("~/.config/nvim/templates-Python/regresion_lineal.py")<CR>', default_opts)

-------------------------Remaps--------------------------

---Mover_Bloques
vim.keymap.set("v", "<C-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-Up>", ":m '<-2<CR>gv=gv")

---Mantener_la_busqueda_centrada
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


--- Abrir_y_cerrar_vsplit
map('n', '<leader>v', ':vs<CR>', { noremap = true, silent = true })
map('n', '<leader>b', ':sp<CR>', { noremap = true, silent = true })
map('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })


---Mapeo_de_teclas_para_desplazarse_entre_vsplit
map('n', '<C-K>', '<C-W><C-J>', { noremap = true, silent = true })
map('n', '<C-I>', '<C-W><C-K>', { noremap = true, silent = true })
map('n', '<C-L>', '<C-W><C-L>', { noremap = true, silent = true })
map('n', '<C-J>', '<C-W><C-H>', { noremap = true, silent = true })


-- Configurar_el_atajo_de_teclado_para_tabular_en_modo_normal
map('n', '<Tab>', '>>', { noremap = true, silent = true })
map('n', '<S-Tab>', '<<', { noremap = true, silent = true })


-- Configurar_el_atajo_de_teclado_para_tabular_en_modo_visual
map('v', '<Tab>', '>gv', { noremap = true, silent = true })
map('v', '<S-Tab>', '<gv', { noremap = true, silent = true })


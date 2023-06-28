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


-------------------------Remaps--------------------------

---Mover_Bloques
vim.keymap.set("v", "<C-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-Up>", ":m '<-2<CR>gv=gv")

---Mantener_la_busqueda_centrada
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")



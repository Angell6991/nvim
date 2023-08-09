-- Configuración de commentary.nvim
vim.g.commentary_no_default_mappings = true

vim.api.nvim_set_keymap('n', '<Leader>k', ':Commentary<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Leader>k', ':Commentary<CR>', { noremap = true, silent = true })

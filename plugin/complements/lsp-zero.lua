local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()

-- You need to setup `cmp` after lsp-zero
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = {
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
  }
})



-- Define una función para configurar los manejadores de LSP
local function configurarLSP()
    -- Ocultar mensajes de diagnóstico de Pyright
    local lsp_handlers = vim.lsp.handlers
    lsp_handlers["textDocument/publishDiagnostics"] = function() end
end

-- Llama a la función para configurar los manejadores de LSP al iniciar Neovim
configurarLSP()

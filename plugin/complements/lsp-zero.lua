-- Configuración nvim-cmp
local cmp_status_ok, cmp = pcall(require, 'cmp')
if not cmp_status_ok then
  return
end

local luasnip_status_ok, luasnip = pcall(require, 'luasnip')
if not luasnip_status_ok then
  return
end

local cmp = require('cmp')

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body) -- Importante para expandir snippets
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Enter para confirmar
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
    { name = 'path' },
  }),
})

-- Configuración Mason
require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = { 'pyright', }, -- servidores comunes, ajusta a tus lenguajes
  automatic_installation = true,
})

-- Configuración LSP con la nueva API vim.lsp.config y vim.lsp.enable
local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
local capabilities = vim.lsp.protocol.make_client_capabilities()
if cmp_nvim_lsp_status then
  capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
end

-- Configura Pyright (ejemplo para Python)
vim.lsp.config('pyright', {
  capabilities = capabilities,
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
      },
    },
  },
})
vim.lsp.enable('pyright')

vim.diagnostic.config({
  underline = false,  -- Desactiva subrayado globalmente
})



-- Mason
require("mason").setup()
require("mason-lspconfig").setup()

-- TS
require('lspconfig').tsserver.setup {}

local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })
end)

-- Disable lsp-zero for jdtls :( 
lsp.skip_server_setup({ 'jdtls' })

lsp.setup()

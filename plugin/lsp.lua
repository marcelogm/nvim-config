-- Mason
require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = {
  },
}

-- TS
require('lspconfig').tsserver.setup {}
require('lspconfig').ansiblels.setup {
  filetypes = {
    "yaml",
  },
  ansible = {
    path = "ansible"
  },
  executionEnvironment = {
    enabled = false
  },
  python = {
    interpreterPath = "python"
  },
  validation = {
    enabled = true,
    lint = {
      enabled = true,
      path = "ansible-lint"
    }
  }
}

local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })
end)

-- Disable lsp-zero for jdtls :(
lsp.skip_server_setup({ 'jdtls' })

lsp.setup()

require('lsp_signature').setup({})
require('lspfuzzy').setup {}

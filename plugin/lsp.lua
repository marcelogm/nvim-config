-- Mason
require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = {
    "json-lsp",
    "nginx-language-server",
    "kotlin-language-server",
    "yamlfmt",
    "vscode-java-decompiler",
    "typescript-language-server",
    "prettier",
    "dockerfile-language-server",
    "docker-compose-language-service",
    "ansible-lint",
    "cmake-language-server",
    "clang-format",
    "ansible-language-server",
    "clangd",
    "eslint_d",
    "jdtls",
  },
}

-- TS
require('lspconfig').tsserver.setup {}
require('lspconfig').ansiblels.setup {
  filetypes = {
    "ansible.yaml"
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
require('lspconfig').groovyls.setup {
  filetypes = {
    "groovy",
  },
}

local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })
end)

-- Disable lsp-zero for jdtls :(
lsp.skip_server_setup({ 'jdtls' })

lsp.setup()

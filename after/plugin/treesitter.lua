require('nvim-treesitter.configs').setup {
  ensure_installed = { 'c', 'typescript', 'lua', 'vim', 'vimdoc', 'query', 'java' },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}

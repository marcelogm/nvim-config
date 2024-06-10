local set = vim.opt

set.number = true
set.relativenumber = true
set.clipboard = "unnamedplus"

local get_tab_callback = function(tab)
  return function()
    set.tabstop = tab
    set.shiftwidth = tab
    set.expandtab = true
  end
end

-- Default
local default_tag = get_tab_callback(4)
default_tag()

-- Java
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'java' },
  desc = 'Setup tabstop for Java',
  callback = get_tab_callback(4)
})

-- Lua
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'lua', 'c', 'cpp', 'h', 'hpp', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact' },
  desc = 'Setup tabstop for Lua, C, C++, JS e TS',
  callback = get_tab_callback(2)
})

-- Format on save
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '',
  callback = function()
    vim.lsp.buf.format()
  end
})

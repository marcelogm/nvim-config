local set = vim.opt

set.relativenumber = true

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
  pattern = { 'lua', 'c', 'javascript', 'typescript', 'javascriptreact' },
  desc = 'Setup tabstop for Lua, JS e TS',
  callback = get_tab_callback(2)
})

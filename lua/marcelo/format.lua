local set = vim.opt

set.relativenumber = true

-- Java
vim.api.nvim_create_autocmd('FileType', {
  pattern = {'java'},
  desc = 'Setup tabstop for Java',
  callback = (function()
    set.tabstop = 4
    set.softtabstop = 4
    set.shiftwidth = 4
  end)
})

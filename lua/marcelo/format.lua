vim.api.nvim_create_autocmd('FileType', {
  pattern = {'java'},
  desc = 'Setup tabstop for Java',
  callback = (function()
    local set = vim.opt
    set.tabstop = 4
    set.softtabstop = 4
    set.shiftwidth = 4
    set.relativenumber = true
  end)
})

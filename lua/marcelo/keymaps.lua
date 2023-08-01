vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<leader>e', ':Ex<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>m', ':NvimTreeFocus<CR>', {noremap = true, silent = true})

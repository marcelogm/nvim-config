vim.g.mapleader = ' '

-- Navigation
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>m', ':NvimTreeFocus<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>gc', ':Git commit --amend --noedit', {})
vim.api.nvim_set_keymap('n', '<leader>s', ':w!<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>b', ':bp<CR>', {})


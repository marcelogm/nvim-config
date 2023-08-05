vim.g.mapleader = ' '

-- Navigation
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>m', ':NvimTreeFocus<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>b', ':bp<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>dv', ':DiffviewOpen<CR>', { noremap = true, silent = true, desc = 'Open Diffview' })

-- Editor 
vim.api.nvim_set_keymap('n', '<leader>r', ':IncRename ', {})
vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>', {})
vim.api.nvim_set_keymap('n', '<A-j>', ':m .+1<CR>', {})
vim.api.nvim_set_keymap('n', '<C-s>', ':w!<CR>', {})

-- LSP
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { noremap = true, silent = true })

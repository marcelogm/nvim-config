vim.g.mapleader = ' '

local map = function(key, command, options)
  vim.keymap.set('n', key, command, options)
end

-- Navigation
map('<leader>n', ':NvimTreeToggle<CR>')
map('<leader>m', ':NvimTreeFocus<CR>', { noremap = true, silent = true })
map('<leader>b', ':bp<CR>', {})
map('<leader>B', ':bp<CR>', {})

-- Editor
map('<leader>er', ':IncRename ', { desc = 'Rename symbol' })
map('<leader>ec', ':w | %bd | e#<CR>', { desc = 'Close all buffers but this one', silent = true })
map('<leader>es', ':wa!<CR>', { desc = 'Save all', silent = true })
map('<leader>eR', ':%s//', { desc = 'Find and replace' })

-- Window
map('-', ':vertical resize -5<CR>', { desc = 'Vertical Resize -5' })
map('=', ':vertical resize +5<CR>', { desc = 'Vertical Resize +5' })
map('_', ':horizontal resize -5<CR>', { desc = 'Horizontal Resize -5' })
map('+', ':horizontal resize +5<CR>', { desc = 'Horizontal Resize +5' })

-- Yes, I know, I'm using the arrow keys
map('<A-left>', '<C-w>h', { desc = 'Move to left window' })
map('<A-down>', '<C-w>j', { desc = 'Move to down window' })
map('<A-up>', '<C-w>k', { desc = 'Move to up window' })
map('<A-right>', '<C-w>l', { desc = 'Move to right window' })

-- Move lines
map('<A-k>', ':m .-2<CR>', {})
map('<A-j>', ':m .+1<CR>', {})
map('<C-p>', ':put "<CR>', {})

-- LSP
map("gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
map("gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
map("gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { noremap = true, silent = true })
map("ge", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })

-- Git
map('<leader>gd', ':DiffviewOpen<CR>', { silent = true, desc = 'Open diff' })
map('<leader>gD', ':DiffviewClose<CR>', { silent = true, desc = 'Close diff' })

map('<Leader>T', function()
  vim.fn.feedkeys(':Template ')
end, { remap = true })

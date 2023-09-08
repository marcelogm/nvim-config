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
map('<Left>', '<C-w>h', { desc = 'Window Left' })
map('<Down>', '<C-w>j', { desc = 'Window Bottom' })
map('<Up>', '<C-w>k', { desc = 'Window Up' })
map('<Right>', '<C-w>l', { desc = 'Window right' })

-- Misc
vim.keymap.set('i', 'fj', '<esc>', {})
vim.keymap.set('i', 'jf', '<esc>', {})

map('<A-k>', ':m .-2<CR>', {})
map('<A-j>', ':m .+1<CR>', {})
map('<C-p>', ':put "<CR>', {})

-- LSP
map("gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
map("gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
map("gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { noremap = true, silent = true })
map("ge", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })

-- Test
map('<leader>tf', ':TestFile -strategy=neovim', { desc = 'Test File' })
map('<leader>tc', ':TestClass -strategy=neovim', { desc = 'Test Class' })
map('<leader>tn', ':TestNearest -strategy=neovim', { desc = 'Test Nearest' })
map('<leader>ta', ':TestSuite -strategy=neovim', { desc = 'Test All' })
map('<leader>tw', ':TestSuite --continuous -strategy=neovim', { desc = 'Test Suite with Watcher' })

-- Dap
map('<leader>db', ':lua require("dap").toggle_breakpoint()<CR>', { desc = 'Toggle Breakpoints' })
map('<leader>dc', ':lua require("dap").continue()<CR>', { desc = 'Attach or continue' })
map('<leader>du', ':lua require("dapui").toggle()<CR>', { desc = 'Open dap-ui' })

-- Git
map('<leader>gb', ':Git checkout -b marcelo/', { desc = 'Create branch and checkout' })
map('<leader>gd', ':DiffviewOpen<CR>', { silent = true, desc = 'Open diff' })
map('<leader>gD', ':DiffviewClose<CR>', { silent = true, desc = 'Close diff' })
map('<leader>gc', ':Git commit -m ', { desc = 'Commit' })
map('<leader>gA', ':Git commit --amend --no-edit', { desc = 'Amend' })
map('<leader>gp', ':Git push', { desc = 'Push' })
map('<leader>gf', ':Git push --force', { desc = 'Push force' })
map('<leader>gm', ':GitCreatePullRequest<CR>', { desc = 'Create MR' })
map('<leader>gr', ':GitRevert<CR>', { desc = 'Revert' })
map('<leader>gl', ':GitBlame', { desc = 'Blame' })
map('<leader>ga', ':Git add .', { desc = 'Stage all' })

map('<Leader>T', function()
  vim.fn.feedkeys(':Template ')
end, { remap = true })

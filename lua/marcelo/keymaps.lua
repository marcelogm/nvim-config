vim.g.mapleader = ' '

--Navigation
vim.keymap.set('n', '<leader>n', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>m', ':NvimTreeFocus<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>b', ':bp<CR>', {})
vim.keymap.set('n', '<leader>dv', ':DiffviewOpen<CR>', { noremap = true, silent = true, desc = 'Open Diffview' })

-- Editor
vim.keymap.set('n', '<leader>r', ':IncRename ', {})
vim.keymap.set('n', '<A-k>', ':m .-2<CR>', {})
vim.keymap.set('n', '<A-j>', ':m .+1<CR>', {})
vim.keymap.set('n', '<C-s>', ':w!<CR>', {})

-- LSP
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { noremap = true, silent = true })

-- Git
vim.keymap.set('n', '<leader>cb', ':Git checkout -b marcelo/', {})
vim.keymap.set('n', '<leader>cc', ':Git commit -m ', {})
vim.keymap.set('n', '<leader>ca', ':Git commit amend --noEmit', {})
vim.keymap.set('n', '<leader>cp', ':Git push', {})
vim.keymap.set('n', '<leader>cu', function()
	local branch = vim.fn.system "git branch --show-current | tr -d '\n'"
	vim.cmd(':Git push --set-upstream origin ' .. branch)
end)

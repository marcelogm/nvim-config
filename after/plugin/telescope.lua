local telescope = require('telescope')
telescope.setup()
telescope.load_extension('fzf')
telescope.load_extension('ui-select')

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>fr', builtin.lsp_references, { desc = 'References' })
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files' })
vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Find Git Files' })
vim.keymap.set('n', '<leader>fa', builtin.live_grep, { desc = 'Live Grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find Buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Find Help' })
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = 'Diagnostics' })

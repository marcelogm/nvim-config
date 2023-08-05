local set = vim.opt

set.relativenumber = true

local get_tab_callback = function (tab)
	return function ()
		set.tabstop = tab
		set.softtabstop = tab
		set.shiftwidth = tab
	end
end

-- Java
vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'java' },
	desc = 'Setup tabstop for Java',
	callback = get_tab_callback(4)
})

-- Lua
vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'lua' },
	desc = 'Setup tabstop for Lua',
	callback = get_tab_callback(2)
})

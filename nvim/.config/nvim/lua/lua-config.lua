vim.api.nvim_create_augroup('LuaSettings', {clear=true})
vim.api.nvim_create_autocmd(
	{'FileType'},
	{
		group = 'LuaSettings',
		pattern = 'lua',
		command = 'setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab'
	}
)

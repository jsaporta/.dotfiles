require("plugins")
require("remap")
require("fugitive")
require("harpoon-kbs")

vim.opt.termguicolors = true

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

require'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "lua", "python", "vim", "vimdoc", "query" },
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	}
}

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

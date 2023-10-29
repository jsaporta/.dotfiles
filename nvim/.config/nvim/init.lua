require("plugins")
require("remap")
require("harpoon-kbs")
-- require("lang-configs.lua")

vim.opt.termguicolors = true




require'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "lua", "python", "vim", "vimdoc", "query" },
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	}
}

-- Packer bootstrapping
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
	execute 'packadd packer.nvim'
end

-- Other Lua files
require ('plugins')




require('lspconfig').pyright.setup{}


vim.o.inccommand = "nosplit"
vim.o.hlsearch = false
vim.o.incsearch = true
vim.wo.number = true

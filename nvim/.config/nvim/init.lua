require ('plugins')
require ('lsp')

vim.cmd[[set termguicolors]]
vim.cmd[[colorscheme base16-tomorrow-night]]

vim.g.mapleader = " "

-- Other options
-- vim.opt.inccommand = "nosplit"
vim.opt.number = true
-- vim.opt.relativenumber = true

-- Searching
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.wrapscan = false

-- vim.opt.wildmenu = true
-- vim.opt.path += **

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

vim.cmd [[
  let g:markdown_folding = 1
  set path+=**
]]
-- 
-- vim.cmd [[
--   let g:vimtex_quickfix_open_on_warning = 0
-- 
--   autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
-- ]]
-- 

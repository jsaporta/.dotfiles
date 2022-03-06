require ('plugins')

-- Other options
-- vim.opt.inccommand = "nosplit"
-- vim.opt.number = true

-- Searching
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.wrapscan = false

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

vim.cmd [[
  let g:markdown_folding = 1
]]
-- 
-- vim.cmd [[
--   let g:vimtex_quickfix_open_on_warning = 0
-- 
--   autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
-- ]]
-- 

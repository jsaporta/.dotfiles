require('plugins')

vim.opt.termguicolors = true

require('lspconfig').clangd.setup{}
require('lspconfig').hls.setup{}













-- FROM CHATGPT
-- Create an autocommand group for Haskell settings
vim.api.nvim_create_augroup('HaskellSettings', { clear = true })

-- Add an autocommand to set spaces instead of tabs for Haskell files
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'haskell',
  group = 'HaskellSettings',
  callback = function()
    vim.bo.expandtab = true   -- Use spaces instead of tabs
    vim.bo.shiftwidth = 4     -- Number of spaces for each indentation level
    vim.bo.softtabstop = 4    -- Number of spaces a <Tab> counts for while editing
    vim.bo.tabstop = 4        -- Number of spaces a <Tab> counts for
  end,
})

-- Set up plugins using Packer: https://github.com/wbthomason/packer.nvim -----
-------------------------------------------------------------------------------
-- BOOTSTRAPPING --------------------------------------------------------------
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({
			'git',
			'clone',
			'--depth',
			'1',
			'https://github.com/wbthomason/packer.nvim',
			install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

-- OTHER PACKAGES -------------------------------------------------------------
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})

	if packer_bootstrap then
		require('packer').sync()
	end
end)

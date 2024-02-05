local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install plugins here 
return packer.startup(function(use)
				-- main plugins
				use { "wbthomason/packer.nvim", commit = "6afb67460283f0e990d35d229fd38fdc04063e0a" } -- Have packer manage itself
				use { "nvim-lua/plenary.nvim", commit = "4b7e52044bbb84242158d977a50c4cbcd85070c7" } -- Useful lua functions used by lots of plugins
				use "lukas-reineke/virt-column.nvim" -- adds vertical line length marker
				use "folke/tokyonight.nvim" -- colorscheme
				use "akinsho/toggleterm.nvim" -- opens terminal in nvim
				use "windwp/nvim-autopairs" -- auto closes parentheses and quotes
				
				-- cmp auto-completion plugins
				use "hrsh7th/nvim-cmp"-- completion plugin for neovim

				-- non-lsp completion sources
				use "saadparwaiz1/cmp_luasnip"
				use "hrsh7th/cmp-buffer"
				use "hrsh7th/cmp-path"
				
				-- snippet plugins
				use "L3MON4D3/LuaSnip"
				use "rafamadriz/friendly-snippets"
				
				-- Lsp plugins
				use { "neovim/nvim-lspconfig", commit = "f11fdff7e8b5b415e5ef1837bdcdd37ea6764dda" } -- enable LSP
				use { "williamboman/mason.nvim", commit = "c2002d7a6b5a72ba02388548cfaf420b864fbc12"} -- simple to use language server installer
				use { "williamboman/mason-lspconfig.nvim", commit = "0051870dd728f4988110a1b2d47f4a4510213e31" }
end)


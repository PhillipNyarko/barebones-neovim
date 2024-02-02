--[[ Every lua file inthe pythonic directory has to be imported to this file
for it to be visible upon neovim's startup (asides from the "init.lua" file) --]]
require "pythonic.remaps"
require "pythonic.options"
require "pythonic.plugins"
require("virt-column").setup({ -- set up vert column plugin
		virtcolumn = "120",
		char = "│",
})
vim.cmd "colorscheme tokyonight-night"


--[[ Every lua file inthe pythonic directory has to be imported to this file
for it to be visible upon neovim's startup (asides from the "init.lua" file) --]]

require "pythonic.remaps"
require "pythonic.options"
require "pythonic.plugins"

require("virt-column").setup({ -- set up vert column plugin
		virtcolumn = "120",
		char = "│",
})

-- configure the tokyonight theme
require("tokyonight").setup({
    style = "night",
    transparent = true,
    
    styles = {
        sidebars = "transparent",
        floats = "transparent",
    },
    
    config = function(_, opts)
        local tokyonight = require "tokyonight"
        tokyonight.setup(opts)
        tokyonight.load()
    end,
})

vim.cmd "colorscheme tokyonight-night"

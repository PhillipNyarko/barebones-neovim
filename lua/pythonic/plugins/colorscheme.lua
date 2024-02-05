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


return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,

    opts = {
      transparent = true,
      transparent_background = true,
      integrations = {
        telescope = true,
        harpoon = true,
        mason = true,
        neotest = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}

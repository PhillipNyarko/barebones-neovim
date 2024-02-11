-----------------------------------------------------
-- Set NeoOptions
------------------------------------------------------

local opt = vim.opt

opt.mouse = "" -- disable right-click mouse menu

opt.clipboard = "unnamedplus" -- copy to system clipboard

opt.scrolloff = 8 -- set vertical scroll offset to 8 lines

opt.undofile = true -- allow for undo even after exiting vim

opt.termguicolors = true -- allows for more default color schemes

opt.cursorline = true -- Enable cursor line highlighting

opt.number = true -- turn on line numbers

opt.relativenumber = true -- turn on relative line numbers

opt.termguicolors = true -- optionally enable 24-bit colour

-- diable net-rw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- briefly highlight selection when yanking
vim.api.nvim_create_autocmd("TextYankPost", { 
  group = vim.api.nvim_create_augroup("highlight_yank", {}),
  desc = "Hightlight selection on yank",
  pattern = "*",
  callback = function()
    vim.highlight.on_yank { higroup = "Visual", timeout = 100 }
  end,
})


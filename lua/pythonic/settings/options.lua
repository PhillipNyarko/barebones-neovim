------------------------------------------------------
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

vim.cmd('colorscheme slate') -- set default colorscheme

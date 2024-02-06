-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local Util = require("lazyvim.util")
local keymap = Util.safe_keymap_set

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --

-- Better window navigation
keymap("n", "<leader>h", "<C-w>h")
keymap("n", "<leader>j", "<C-w>j")
keymap("n", "<leader>k", "<C-w>k")
keymap("n", "<leader>l", "<C-w>l")

-- Resize with arrows
keymap("n", "<C-Down>", ":resize +2<CR>")
keymap("n", "<C-Left>", ":vertical resize +2<CR>")
keymap("n", "<C-Up>", ":resize -2<CR>")
keymap("n", "<C-Right>", ":vertical resize -2<CR>")

--Buffers--

-- open net-rw and select for buffer selection for vertical split screen
keymap("n", "<Leader>t", ":vsplit<CR> :Ex<CR>")
--make it open non netrw

-- Navigate buffers
keymap("n", "<C-l>", ":bnext<CR>")
keymap("n", "<C-h>", ":bprevious<CR>")

-- Move text up and down in normal mode
keymap("n", "<A-j>", ":m .+1<CR>==")
keymap("n", "<A-k>", ":m .-2<CR>==")

keymap("n", "<C-z>", "") -- unmap ctrl z

-- Insert --
-- press jk fast to exit insert mode
keymap("i", "jk", "<cmd>noh<cr><esc>") -- remap  <esc> to "jk" for insert mode (also removes any highlighting)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv^")
keymap("v", ">", ">gv^")

-- Move text up and down in visual mode (works with alt and shift)
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv")
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv")
keymap("v", "p", '"_dP')

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":m '>+1<CR>gv=gv")
keymap("x", "K", ":m '<-2<CR>gv=gv")
keymap("x", "<A-j>", ":m '>+1<CR>gv=gv")
keymap("x", "<A-k>", ":m '<-2<CR>gv=gv")

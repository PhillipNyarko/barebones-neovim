-- All Neovim Macros are set here

-- set the leader character to be used for commands
vim.g.mapleader = " "

-- while in "normal" mode, if the leader key and "pv" is pressed, execute vim command ":Ex" (opens net-rw)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("i", "jk", '<Esc>') -- while in "insert" mode, if "jk" is typed, escape to normal mode
vim.keymap.set("v", "jk", '<Esc>') -- while in "insert" mode, if "jk" is typed, escape to normal mode


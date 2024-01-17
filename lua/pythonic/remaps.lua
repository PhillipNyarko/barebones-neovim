-- All Neovim Macros are set here

-- set the leader character to be used for commands
vim.g.mapleader = " "

-- while in "normal" mode, if leader (which is set above) is pressed, execute vim command ":Ex"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)



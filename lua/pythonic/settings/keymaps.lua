local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Change leader to space
vim.g.mapleader = " "

-- Disable arrow keys
map("", "<up>", "<nop>")
map("", "<down>", "<nop>")
map("", "<left>", "<nop>")
map("", "<right>", "<nop>")

-- Move around splits using leader + {h,j,k,l}
map("n", "<leader>h", "<C-w>h")
map("n", "<leader>j", "<C-w>j")
map("n", "<leader>k", "<C-w>k")
map("n", "<leader>l", "<C-w>l")

-- Resize with ctrl + {h,j,k,l}
map("n", "<C-h>", ":resize +2<CR>")
map("n", "<C-j>", ":vertical resize +2<CR>")
map("n", "<C-k>", ":resize -2<CR>")
map("n", "<C-l>", ":vertical resize -2<CR>")

-- Map Esc to kj
map("i", "kj", "<Esc>")

-- Clear search highlighting with <leader> and c 
map("n", "<leader>c", ":nohl<CR>")

-- Fast saving and reloading with <leader> and s
map("n", "<leader>s", ":w<CR> :so<CR>")

-- Close all windows and exit from Neovim with <leader> and q
map("n", "<leader>q", ":qa!<CR>")

-- Save and close the current file with <leader> ww
map("n", "<leader>ww", ":wq<CR>")

-- easier find (pattern) with <leader>f
map("n", "<leader>f", "/")
  
-- easier replace (pattern) with <leader> r 
map("n", "<leader>r", ":%s/")
 
--search working directory
--

-- open nvim tree on the left for file switch
map("n", "<leader>e", ":wq<CR>")

--open a buffer selection pane on the right (opens selected buffer in vertical split on the right)
map("n", "<leader>t", ":wq<CR>")

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- Terminal mappings
map("n", "<C-t>", ":Term<CR>", { noremap = true })  -- open
map("t", "<Esc>", "<C-\\><C-n>")                    -- exit



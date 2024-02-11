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

-----------------------------------------------
--Motions
-----------------------------------------------

-- Change leader to space
vim.g.mapleader = " " 

-- Insert Mode --------------------------------

-- map esc to "kj"
map("i", "kj", "<Esc>") 


-- Normal Mode --------------------------------

-- Navigate buffers
map("n", "<C-l>", ":bnext<CR>")
map("n", "<C-h>", ":bprevious<CR>")

-- Move text up and down in normal mode
map("n", "<A-j>", ":m .+1<CR>==")
map("n", "<A-k>", ":m .-2<CR>==")

-- yank/delete from cursor to end of line
map("n", "y", "y$") 
map("n", "<leader>dd", "D") 


-- Visual Mode --------------------------------

-- stay in indent mode
map("v", "<", "<gv^")
map("v", ">", ">gv^")


map("v", "<A-j>", ":m '>+1<CR>gv=gv")
map("v", "<A-k>", ":m '<-2<CR>gv=gv")
map("v", "p", '"_dP')


-- Visual Block Mode ---------------------------

-- yank to the end of line in visual mode
map("x", "y", "$y") 

-- Move text up and down
map("x", "J", ":m '>+1<CR>gv=gv")
map("x", "K", ":m '<-2<CR>gv=gv")
map("x", "<A-j>", ":m '>+1<CR>gv=gv")
map("x", "<A-k>", ":m '<-2<CR>gv=gv")


-----------------------------------------------
--Saving
-----------------------------------------------

-- Faster writing to file with <leader> s
map("n", "<leader>s", ":w<CR> :so<CR>")

-- Save and close the current file with <leader> ww
map("n", "<leader>ss", ":wq<CR>")

-- Faster sourcing with <leader> so
map("n", "<leader>so", ":so<CR>")


-----------------------------------------------
--Window Management
-----------------------------------------------

-- Close current window 
map("n", "<leader>q", ":q<CR>")

-- Close all windows without saving and exit from Neovim with <leader> and q
map("n", "<leader>qa", ":qa!<CR>")

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


-----------------------------------------------
--Find and Replace
-----------------------------------------------

-- easier find (pattern) with <leader>f
map("n", "<leader>f", "/")
  
-- easier replace (pattern) with <leader> r 
map("n", "<leader>r", ":%s/")

-- Clear search highlighting with <leader> and c 
map("n", "<leader>c", ":nohl<CR>")


-----------------------------------------------------------
-- Nvim Tree 
-----------------------------------------------------------

--- open nvim tree on the left for file switch
map("n", "<leader>e", ":Lex<CR>")

--open a buffer selection pane on the right (opens selected buffer in vertical split on the right)
map("n", "<leader>t", "")

-----------------------------------------------------------
-- Terminal 
-----------------------------------------------------------

-- Terminal mappings
map("n", "<C-t>", ":Term<CR>", { noremap = true })  -- open
map("t", "<Esc>", "<C-\\><C-n>")                    -- exit


-----------------------------------------------------------
-- Disabled
-----------------------------------------------------------

-- Disable arrow keys
map("", "<up>", "<nop>")
map("", "<down>", "<nop>")
map("", "<left>", "<nop>")
map("", "<right>", "<nop>")

--Disable Ctrl-z
map("", "<C-z>", "<nop>") 

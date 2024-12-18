-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = ","

local keymap = vim.keymap -- for conciseness
-- local neogit = require('neogit')

----------------------- General Keymaps -------------------

-- Toggle Undo tree
keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle Undo Tree" })

-- Clear search highlighting
keymap.set("n", "<leader>nh", "<cmd>nohl<CR>", { desc = "Clear search highlighting" })

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- Delete a word backwards
keymap.set("n", "db", 'vb"_d')

-- window management
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- Tab
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab

-- Resize window
keymap.set("n", "C-w<left>", "<C-w><")
keymap.set("n", "C-w<right>", "<C-w>>")
keymap.set("n", "C-w<up>", "<C-w>+")
keymap.set("n", "C-w<down>", "<C-w>-")

-- Git
keymap.set("n", "<leader>go", ":Neogit<CR>", { silent = true, noremap = true })
keymap.set("n", "<leader>gc", ":Neogit commit<CR>", { silent = true, noremap = true })
keymap.set("n", "<leader>gp", ":Neogit pull<CR>", { silent = true, noremap = true })
keymap.set("n", "<leader>gP", ":Neogit push<CR>", { silent = true, noremap = true })
keymap.set("n", "<leader>gb", ":Telescope git_branches<CR>", { silent = true, noremap = true })
keymap.set("n", "<leader>gB", ":G blame<CR>", { silent = true, noremap = true })

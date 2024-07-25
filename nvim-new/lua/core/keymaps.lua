vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("i", "jk", "<Esc>", opts)
keymap("v", "jk", "<Esc>", opts)

keymap("n", "<S-j>", "<S-}>" , opts)
keymap("n", "<S-k>", "<S-{>" , opts)

keymap("n", "<leader>|", "<C-w>v", opts)

-- Move lines up and down
keymap("v", "<S-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<S-k>", ":m '<-2<CR>gv=gv", opts)

-- Keep search term in the middle
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- Copy to clipboard
keymap("n", "<leader>y", '"+y', opts)
keymap("v", "<leader>y", '"+y', opts)
keymap("v", "<leader>Y", '"+Y', opts)

-- Paste from clipboard
keymap("n", "<leader>p", '"+p', opts)
keymap("n", "<leader>P", '"+P', opts)

-- Move between buffers
keymap("n", "<S-l>", ":bn <CR>", opts)
keymap("n", "<S-h>", ":bp <CR>", opts)

keymap("n", "<leader>b", "<CMD>NvimTreeToggle<CR>")

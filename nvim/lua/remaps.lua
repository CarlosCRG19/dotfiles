vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("v", "jk", "<Esc>")

vim.keymap.set("n", "<S-j>", "<S-}>")
vim.keymap.set("n", "<S-k>", "<S-{>")
vim.keymap.set("n", "<leader>|", "<C-w>v")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Move current selection
vim.keymap.set("v", "<S-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<S-k>", ":m '<-2<CR>gv=gv")

-- Keep search term in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>Y", "\"+Y")

-- Move between buffers
vim.keymap.set("n", "<S-l>", ":bn <cr>", { silent = true })
vim.keymap.set("n", "<S-h>", ":bp <cr>", { silent = true })

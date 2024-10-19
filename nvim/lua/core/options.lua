vim.opt.nu = true -- show line numbers
vim.opt.rnu = true -- show relative line numbers

vim.opt.tabstop = 2 -- insert 2 spaces for a tab
vim.opt.softtabstop = 2 -- when hitting <tab> or <BS>, insert 2 spaces
vim.opt.shiftwidth = 2 -- when indenting with '>', use 2 spaces
vim.opt.expandtab = true -- convert tabs to spaces

vim.opt.autoindent = true -- copy indent from current line when starting a new line
vim.opt.smartindent = true -- smart indenting for C-like languages

vim.opt.swapfile = false -- don't create swap files
vim.opt.backup = false -- don't create backup files
vim.opt.writebackup = false -- don't create backup files before overwriting

vim.opt.hlsearch = true -- highlight search results
vim.opt.incsearch = true -- show search results as you type
vim.opt.smartcase = true -- ignore case if the search pattern is all lowercase
vim.opt.ignorecase = true -- ignore case when searching

vim.opt.termguicolors = true -- enable term color support

vim.opt.cursorline = true -- highlight the current line
vim.opt.showmatch = true -- highlight matching parenthesis
-- vim.opt.signcolumn = "yes" -- always show the sign column

vim.opt.mouse = "a" -- enable mouse support

vim.opt.encoding = "utf-8"

vim.g.loaded_netrw = 1 -- disable netrw
vim.g.loaded_netrwPlugin = 1

-- vim.opt.laststatus = 3 -- recommended setting for avante.nvim

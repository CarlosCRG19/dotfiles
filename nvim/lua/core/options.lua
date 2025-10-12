vim.opt.nu = true -- show line numbers
vim.opt.rnu = true -- show relative line numbers

vim.opt.tabstop = 2         -- insert 2 spaces for a tab
vim.opt.softtabstop = 2     -- when hitting <tab> or <BS>, insert 2 spaces
vim.opt.shiftwidth = 2      -- when indenting with '>', use 2 spaces
vim.opt.expandtab = true    -- convert tab to spaces

vim.opt.wrap = false

vim.opt.swapfile = false    -- don't create swap files
vim.opt.backup = false      -- don't create backup files
vim.opt.writebackup = false -- don't create backup files before overwriting
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.hlsearch = true     -- highlight search results
vim.opt.incsearch = true    -- show search results as you type
vim.opt.smartcase = true    -- ignore case if the search pattern is all lowercase
vim.opt.ignorecase = true   -- ignore case when searching

vim.opt.termguicolors = true    -- enable term color support

vim.opt.scrolloff = 8       -- always have at least eight lines visible above/below the cursor

vim.cursorline = true       -- highlight the current line
vim.opt.showmatch = true    -- highlight matching parenthesis

vim.opt.mouse = "a"         -- enable mouse support
vim.opt.encoding = "utf-8"

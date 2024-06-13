vim.opt.nu = true
vim.opt.rnu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.api.nvim_command("autocmd FileType javascript,javascriptreact,typescript,typescriptreact setlocal shiftwidth=2 softtabstop=2")

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.opt.termguicolors = true

vim.opt.cursorline = true
vim.opt.showmatch = true

vim.opt.mouse = 'a'

vim.opt.encoding = 'utf-8'

vim.g.copilot_assume_mapped = true

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Format on save
augroup("FormatOnSave", { clear = true })
autocmd("BufWritePre", {
  group = "FormatOnSave",
  callback = function()
    vim.lsp.buf.format()
  end,
})

-- Highlight on yank
augroup("YankHighlight", { clear = true })
autocmd("TextYankPost", {
  group = "YankHighlight",
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 150 })
  end,
})

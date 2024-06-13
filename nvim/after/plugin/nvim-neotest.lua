require("neotest").setup({
  adapters = {
    require("neotest-python")
  }
})

vim.keymap.set("n", "<leader>tc", "<cmd>lua require('neotest').run.run()<CR>")
vim.keymap.set("n", "<leader>tf", "<cmd>lua require('neotest').run.run({vim.fn.expand('%')})<CR>")

local M = {
  "windwp/nvim-ts-autotag",
  event = { "BufReadPost", "BufNewFile" },
  ft = {
    "javascript",
    "javascripreact",
    "typescript",
    "typescriptreact",
  },
  config = function()
    require("nvim-ts-autotag").setup()
  end
}

return M

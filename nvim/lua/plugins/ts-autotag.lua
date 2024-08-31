local M = {
  "windwp/nvim-ts-autotag",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("nvim-ts-autotag").setup()
  end
}

return M

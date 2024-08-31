local M = {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    require("nvim-tree").setup({
      update_focused_file = {
        enable = true,
        update_root = true
      }
    })
  end
}

return M

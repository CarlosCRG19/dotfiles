local M = {
  "nvim-tree/nvim-tree.lua",
  event = "VeryLazy",
}

function M.config()
  require("nvim-tree").setup({
    update_focused_file = {
      enable = true,
      update_root = true
    }
  })
end

return M

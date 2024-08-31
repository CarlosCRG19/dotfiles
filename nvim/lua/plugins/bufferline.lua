local M = {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    require("bufferline").setup({
      options = {
        show_close_icon = false,
        show_buffer_close_icons = false,
        diagnostics = "nvim_lsp",
        offsets = {
          {
            filetype = "NvimTree",
          },
        }
      }
    })
  end
}

return M

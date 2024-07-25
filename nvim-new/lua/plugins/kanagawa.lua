local M = {
  "rebelot/kanagawa.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  opts = {
    compile = false
  }
}

function M.config()
  vim.cmd.colorscheme("kanagawa")
end

return M

local M = {
  "mhinz/vim-signify",
  config = function()
    vim.g.signify_sign_add = "▎"
    vim.g.signify_sign_change = "▎"
    vim.g.signify_sign_delete = "⏵"
    vim.g.signify_sign_delete_first_line = "⏵"
    vim.g.signify_sign_change_delete = "⏵"
  end
}

return M

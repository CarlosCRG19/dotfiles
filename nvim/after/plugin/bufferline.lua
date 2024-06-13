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

vim.cmd(
    [[
        augroup MyColors
        autocmd!
        autocmd ColorScheme * highlight BufferLineFill guibg=NONE
        autocmd ColorScheme * highlight BufferLineSeparator guifg=NONE
        autocmd ColorScheme * highlight BufferLineSeparatorSelected guifg=NONE
        augroup END
    ]]
)

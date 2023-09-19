
require("bufferline").setup({
    highlights = {
        background = {
            bg = '#191724',
        },
        separator_selected = {
            fg = NONE,
            bg = '#191724',
        },
        separator_visible = {
            fg = NONE,
            bg = '#191724',
        },
        separator = {
            fg = NONE,
            bg = '#191724',
        },
        buffer_visible = {
            fg = normal_fg,
            bg = '#191724',
        },
        buffer_selected = {
            fg = normal_fg,
            bg = '#191724',
            bold = true,
            italic = true,
        },
    },
    options = {
        show_close_icon = false,
        show_buffer_close_icons = false,
        separator_style = "slant",
        diagnostics = "nvim_lsp",
        offsets = {
            { filetype = "NvimTree" }
        }
    }
})

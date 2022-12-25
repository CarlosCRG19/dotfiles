vim.g.material_style = "palenight"

require("material").setup({
    contrast = {
        terminal = false,
        sidebars = true,
        floating_windows = true,
        cursor_line = true,
        non_current_windows = false,
    },
    styles = {
        comments = { italic = true },
        strings = {},
        keywords = {},
        functions = { italic = true },
        variables = {},
        operators = {},
        types = {},
    },
    plugins = {
        "nvim-cmp",
        "nvim-tree",
        "telescope",
    },
    disable = {
        colored_cursor = false,
        borders = false,
        background = false,
        term_colors = false,
        eob_lines = false
    },
    high_visibility = {
        lighter = false,
        darker = false
    },
    lualine_style = "default",
    async_loading = true,
    custom_colors = nil,
    custom_highlights = {},
})

vim.cmd 'colorscheme material'

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require("null-ls")
local conditional = function(fn)
    local utils = require("null-ls.utils").make_conditional_utils()
    return fn(utils)
end

null_ls.setup({
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                    -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
                    vim.lsp.buf.format({ async = false })
                end,
            })
        end
    end,
    sources = {
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
    },
    
    -- Here we set a conditional to call the rubocop formatter. If we have a Gemfile in the project, we call "bundle exec rubocop", if not we only call "rubocop".
    conditional(function(utils)
        return utils.root_has_file("Gemfile")
            and null_ls.builtins.formatting.rubocop.with({
            command = "bundle",
            args = vim.list_extend(
              { "exec", "rubocop" },
              null_ls.builtins.formatting.rubocop._opts.args
            ),
        })
        or null_ls.builtins.formatting.rubocop
    end),

    conditional(function(utils)
        return utils.root_has_file("Gemfile")
            and null_ls.builtins.diagnostics.rubocop.with({
            command = "bundle",
            args = vim.list_extend(
              { "exec", "rubocop" },
              null_ls.builtins.diagnostics.rubocop._opts.args
            ),
        })
        or null_ls.builtins.diagnostics.rubocop
    end),
})

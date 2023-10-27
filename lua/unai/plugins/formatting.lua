return {
    "nvimtools/none-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "mason.nvim" },
    opts = function()
        local nls = require("null-ls")
        return {
            root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
            on_attach = function(client, bufnr)
                if client.supports_method("textDocument/formatting") then
                    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        group = vim.api.nvim_create_augroup("LspFormatting", {}),
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format({ async = false })
                        end,
                    })
                end
            end,
            sources = {
                -- python
                nls.builtins.formatting.black.with({
                    extra_args = { "--line-length=100" }
                }),
                nls.builtins.formatting.isort,
                nls.builtins.diagnostics.flake8.with({ -- TODO: detectar si existe .flake8 y sino usar extra_args
                    extra_args = {
                        "--max-line-length=100",
                        "--ignore=E203,W503",
                        "--extend-select=W504"
                    }
                }),
            },
        }
    end,
}

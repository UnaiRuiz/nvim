return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "https://gitlab.com/schrieveslaach/sonarlint.nvim" },
    config = function()
      local lspconfig = require("lspconfig")

      local on_attach = function(_, bufnr)
        vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
        local function map(mode, l, r, desc) vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc }) end
        local opts = { buffer = bufnr }
        map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
        map("n", "gd", vim.lsp.buf.definition, "Go to definition")
        map("n", "gr", vim.lsp.buf.references, "Go to references")
        map("n", "gi", vim.lsp.buf.implementation, "Go to implementation")
        map("n", "K", vim.lsp.buf.hover, "Show info")
        map("n", "<C-k>", vim.lsp.buf.signature_help, "Show signature help")
        map("n", "<leader>D", vim.lsp.buf.type_definition, "Show type definition")
        map("n", "<leader>rn", vim.lsp.buf.rename, "Rename")
        map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "Code action")
        map(
          "n",
          "<leader>d",
          function() vim.diagnostic.open_float(nil, { focus = false, scope = "line", border = "rounded" }) end,
          "Show diagnostics"
        )
      end

      lspconfig.pyright.setup({
        on_attach = on_attach,
        settings = {
          python = {
            pythonPath = "/usr/bin/python3.11",
            analysis = {
              diagnosticMode = "workspace",
            },
          },
        },
      })
      lspconfig.marksman.setup({
        on_attach = on_attach,
      })
      lspconfig.lua_ls.setup({
        on_attach = on_attach,
      })
      lspconfig.yamlls.setup({
        on_attach = on_attach,
        settings = {
          yaml = {
            validate = true,
            schemaStore = {
              enable = false,
              url = "",
            },
          },
        },
      })
      require("sonarlint").setup({
        server = {
          cmd = {
            "java",
            "-jar",
            vim.fn.stdpath("data") .. "/sonarlint/server/sonarlint-ls.jar",
            "-stdio",
            "-analyzers",
            vim.fn.stdpath("data") .. "/sonarlint/analyzers/sonarpython.jar",
          },
          settings = {
            sonarlint = {
              test = "test",
            },
          },
        },
        filetypes = {
          "python",
        },
      })
    end,
  },
}

return {
  "mfussenegger/nvim-lint",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      python = { "flake8", "bandit", "mypy" },
      markdown = { "markdownlint" },
      json = { "jsonlint" },
    }

    if vim.fn.filereadable(vim.fn.getcwd() .. "/.flake8") ~= 1 then
      table.insert(lint.linters.flake8.args, "--max-line-length=100")
      table.insert(lint.linters.flake8.args, "--ignore=E203,W503")
      table.insert(lint.linters.flake8.args, "--extend-select=W504")
    end

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>ll", function()
      lint.try_lint()
    end, { desc = "Lint Document" })
  end,
}

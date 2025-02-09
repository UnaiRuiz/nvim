return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  opts = {
    formatters_by_ft = {
      python = { "isort", "black" },
      lua = { "stylua" },
      json = { "prettier" },
      yaml = { "prettier" },
      markdown = { "prettier" },
    },
    format_on_save = {
      timeout_ms = 1500,
    },
  },
}

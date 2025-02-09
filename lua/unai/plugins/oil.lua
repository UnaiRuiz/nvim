return {
  "stevearc/oil.nvim",
  opts = {
    view_options = {
      show_hidden = true,
      sort = {
        { "type", "asc" },
        { "name", "asc" },
      },
    },
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>-", "<cmd>Oil --float<cr>", desc = "Open oil buffer" },
  },
}

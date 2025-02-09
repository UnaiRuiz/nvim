return {
  "MeanderingProgrammer/render-markdown.nvim",
  ft = "markdown",
  dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
  opts = {
    heading = {
      width = "block",
      right_pad = 1,
    },
    code = {
      width = "block",
      left_pad = 1,
      right_pad = 1,
    },
  },
}

return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  config = function(_, opts)
    require("noice").setup(opts)
    vim.keymap.set("n", "<leader>x", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss notifications" })
  end,
  opts = {},
}

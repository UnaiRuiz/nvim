return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    {
      "<leader>?",
      function() require("which-key").show({ global = false }) end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
  config = function()
    local wk = require("which-key")
    wk.add({
      { "<leader>o", group = "+ Obsidian" },
      { "<leader>f", group = "+ Find" },
      { "<leader>g", group = "+ Git" },
      { "<leader>gh", group = "+ Hunk" },
      { "<leader>w", group = "+ Window" },
      { "<leader><tab>", group = "+ Tab" },
      { "<leader>t", group = "+ Terminal" },
      { "<leader>b", group = "+ Buffer" },
    })
  end,
}

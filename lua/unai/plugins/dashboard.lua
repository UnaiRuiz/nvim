return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  config = function()
    local db = require("dashboard")
    db.setup({
      theme = "hyper",
      config = {
        week_header = {
          enable = true,
        },
        shortcut = {
          { desc = " Plugins ", group = "Label", action = "Lazy", key = "p" },
          { desc = "󰚰 Update ", group = "Label", action = "Lazy update", key = "u" },
          { desc = "󰱼 Files ", group = "Label", action = "Telescope find_files", key = "f" },
          { desc = " Config ", group = "Label", action = "OpenConfigFiles", key = "c" },
          { desc = "󰺿 Vaults ", group = "Label", action = "ObsidianQuickSwitch", key = "v" },
        },
        footer = {},
      },
    })
  end,
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
}

return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  event = {
    "BufReadPre " .. vim.fn.expand("~") .. "/vaults/**/*.md",
    "BufNewFile " .. vim.fn.expand("~") .. "/vaults/**/*.md",
    "VeryLazy",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter",
  },
  opts = {
    ui = {
      enable = false,
    },
    workspaces = {
      {
        name = "work",
        path = "~/vaults/knowledge",
      },
      {
        name = "personal",
        path = "~/vaults/personal",
      },
    },
    daily_notes = {
      folder = "notes/dailies",
      date_format = "%Y-%m-%d",
      default_tags = { "daily-notes" },
      template = nil,
    },
  },
  keys = {
    { "<leader>od", ":ObsidianToday<cr>", desc = "[d]aily" },
    { "<leader>ot", ":ObsidianToday 1<cr>", desc = "[t]omorrow" },
    { "<leader>oy", ":ObsidianToday -1<cr>", desc = "[y]esterday" },
    { "<leader>ob", ":ObsidianBacklinks<cr>", desc = "[b]acklinks" },
    { "<leader>ol", ":ObsidianLink<cr>", desc = "[l]ink selection" },
    { "<leader>of", ":ObsidianFollowLink<cr>", desc = "[f]ollow link" },
    { "<leader>on", ":ObsidianNew<cr>", desc = "[n]ew" },
    { "<leader>os", ":ObsidianSearch<cr>", desc = "[s]earch" },
    { "<leader>oo", ":ObsidianQuickSwitch<cr>", desc = "[o]pen quickswitch" },
    { "<leader>oO", ":ObsidianOpen<cr>", desc = "[O]pen in app" },
    { "<leader>ow", ":ObsidianWorkspace<cr>", desc = "[w]orkspace" },
  },
}

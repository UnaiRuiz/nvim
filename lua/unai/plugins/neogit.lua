return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    local neogit = require("neogit")
    neogit.setup({})

    local map = vim.keymap.set
    map("n", "<leader>gs", ":Neogit<cr>", { desc = "Open Neogit" })
    map("n", "<leader>gc", ":Neogit commit<cr>", { desc = "Commit" })
    map("n", "<leader>gp", ":Neogit pull<cr>", { desc = "Pull" })
    map("n", "<leader>gP", ":Neogit push<cr>", { desc = "Push" })
    map("n", "<leader>gd", ":DiffviewOpen<cr>", { desc = "Diff" })
    map("n", "<leader>gb", ":Telescope git_branches<cr>", { desc = "Show branches" })
    map("n", "<leader>gB", ":G blame<cr>", { desc = "Blame" })
  end,
}

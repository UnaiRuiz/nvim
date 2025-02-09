return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    local map = vim.keymap.set
    harpoon:setup({})
    map("n", "<leader>a", function() harpoon:list():add() end, { desc = "Harpoon Add File" })
    map("n", "<leader>m", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon Menu" })
    map("n", "<leader>h", function() harpoon:list():select(1) end, { desc = "Harpoon select 1" })
    map("n", "<leader>j", function() harpoon:list():select(2) end, { desc = "Harpoon select 2" })
    map("n", "<leader>k", function() harpoon:list():select(3) end, { desc = "Harpoon select 3" })
    map("n", "<leader>l", function() harpoon:list():select(4) end, { desc = "Harpoon select 4" })
  end,
}

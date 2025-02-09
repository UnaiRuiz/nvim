return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  cmd = { "Telescope" },
  keys = {
    { "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
    { "<leader> ", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Files" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Grep" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
    { "<leader>fd", "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics" },
    { "<leader>fs", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", desc = "Symbols" },
    { "<leader>ft", "<cmd>TodoTelescope<cr>", desc = "TODOs" },
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            ["<C-h>"] = actions.which_key,
          },
        },
      },
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        },
      },
    })
    telescope.load_extension("fzf")
  end,
}

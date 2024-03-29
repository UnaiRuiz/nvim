return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.3",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "debugloop/telescope-undo.nvim",
    },
    cmd = "Telescope",
    version = false,
    keys = {
      { "<leader>,", "<cmd>Telescope buffers show_all_buffers=true<cr>", desc = "Switch Buffer" },
      { "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
      { "<leader> ", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
      -- treesitter
      { "<leader>s", "<cmd>Telescope treesitter<cr>", desc = "Treesitter symbols" },
      -- git
      {
        "<leader>gf",
        function()
          require("telescope.builtin").git_files({ show_untracked = true })
        end,
        desc = "Find git files",
      },
      { "<leader>gs", "<cmd>Telescope git_status<cr>", desc = "Status" },
      { "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "Commits" },
      { "<leader>gb", "<cmd>Telescope git_branches<cr>", desc = "Branches" },
      -- LSP
      { "gd", "<cmd>Telescope lsp_definitions<cr>", desc = "Definitions" },
      { "gr", "<cmd>Telescope lsp_references<cr>", desc = "References" },
      { "gi", "<cmd>Telescope lsp_implementations<cr>", desc = "Implementations" },
      { "<leader>ld", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Document diagnostics" },
      { "<leader>lD", "<cmd>Telescope diagnostics <cr>", desc = "Workspace diagnostics" },
      -- Help
      { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find Help" },
      -- Undo tree
      { "<leader>u", "<cmd>Telescope undo<cr>", desc = "Show undo tree" },
    },
    config = function()
      require("telescope").setup({
        extensions = {
          undo = {
            use_delta = true,
            layout_strategy = "vertical",
            side_by_side = true,
            layout_config = {
              preview_height = 0.5,
            },
          },
        },
      })
      require("telescope").load_extension("undo")
    end,
  },
}

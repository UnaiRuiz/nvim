vim.api.nvim_create_user_command(
  "OpenConfigFiles",
  function() require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") }) end,
  {}
)

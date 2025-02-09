return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function()
    return {
      options = {
        theme = "auto",
        globalstatus = false,
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
        disabled_filetypes = { statusline = { "dashboard", "alpha" } },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = {
          { "branch" },
          {
            "diff",
            symbols = {
              added = " ",
              modified = " ",
              removed = " ",
            },
          },

          {
            "diagnostics",
          },
        },
        lualine_c = {
          { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
          { "filename", path = 1, symbols = { modified = "  ", readonly = "", unnamed = "" } },
        },
        lualine_x = { "encoding" },
        lualine_y = {
          { "progress", separator = " ", padding = { left = 1, right = 0 } },
          { "location", padding = { left = 0, right = 1 } },
        },
        lualine_z = {
          function() return " " .. os.date("%R") end,
        },
      },
    }
  end,
}

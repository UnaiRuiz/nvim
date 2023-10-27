return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        local tokyonight = require("tokyonight")
        tokyonight.setup{
            style = "storm",
            styles = {
                comments = { italic = false }, -- Italics disabled because of a Windows terminal bug
                keywords = { italic = false}, -- https://github.com/microsoft/terminal/issues/9381
                functions = {},
                variables = {},
            },
        }
        vim.cmd.colorscheme("tokyonight")
    end,
}

-- Colorschemes que me gustán:
-- "folke/tokyonight.nvim"
-- "olimorris/onedarkpro.nvim"
-- "sonph/onehalf"
-- "navarasu/onedark.nvim"
-- "catppuccin/nvim"
-- "marko-cerovac/material.nvim"
-- "sainnhe/gruvbox-material"
-- "sainnhe/edge"

return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
    build = ":TSUpdate",
    event = "VeryLazy",
    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed ={
            "lua",
            "luadoc",
            "bash",
            "python",
            "markdown",
            "markdown_inline",
            "yaml",
            "json",
            "html",
            "regex",
        },
        highlight = {
            enable = true,
        },
        indent = {
            enable = true,
        },
        textobjects = {
            select = {
                    enable = true,
                    lookahead = true,
                    keymaps = {
                        ["af"] = { query = "@function.outer", desc = "Select outer part of a function region" },
                        ["if"] = { query = "@function.inner", desc = "Select inner part of a function region" },
                        ["ac"] = { query = "@conditional.outer", desc = "Select outer part of a conditional region" },
                        ["ic"] = { query = "@conditional.inner", desc = "Select inner part of a conditional region" },
                        ["al"] = { query = "@loop.outer", desc = "Select outer part of a loop region" },
                        ["il"] = { query = "@loop.inner", desc = "Select inner part of a loop region" },
                    },
              },
        }
    },
}

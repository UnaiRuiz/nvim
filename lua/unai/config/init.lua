require("unai.config.options")
require("unai.config.keymaps")
require("unai.config.autocmds")
require("unai.config.lazy")

-- TODO: mover lo de a partir de esta línea de aquí

-- vim.g.clipboard = {
-- 	name = "WSLClipboard",
-- 	copy = {
-- 		["+"] = {"iconv -t utf-16le", "clip.exe"}, --"iconv -t utf-16le | clip.exe",
-- 		["*"] = "iconv -t utf-16le | clip.exe",
-- 	},
-- 	paste = {
-- 		["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
-- 		["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
-- 	},
-- 	cache_enabled = 0,
-- }
vim.g.clipboard = {
	name = "WSLClipboard",
	copy = {
		["+"] = function()
            local selected_text = vim.fn.getreg("\"")
            local cmd = string.format("printf %s | iconv -t utf-16le | clip.exe", vim.fn.shellescape(selected_text))
            vim.fn.system(cmd)
        end,
		["*"] = function()
            local selected_text = vim.fn.getreg("\"")
            local cmd = string.format("printf %s | iconv -t utf-16le | clip.exe", vim.fn.shellescape(selected_text))
            vim.fn.system(cmd)
        end,
	},
	paste = {
		["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
		["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
	},
	cache_enabled = 0,
}


local M = {}

M.icons = {
    dap = {
        Stopped = { "󰁕 ", "DiagnosticWarn", "DapStoppedLine" },
        Breakpoint = " ",
        BreakpointCondition = " ",
        BreakpointRejected = { " ", "DiagnosticError" },
        LogPoint = ".>",
    },
    diagnostics = {
        Error = " ",
        Warn = " ",
        Hint = " ",
        Info = " ",
    },
    git = {
        added = " ",
        modified = " ",
        removed = " ",
    },
    kinds = {
        Text = "",
        Method = "󰆧",
        Function = "󰊕",
        Constructor = "",
        Field = "󰇽",
        Variable = "󰂡",
        Class = "󰠱",
        Interface = "",
        Module = "",
        Property = "󰜢",
        Unit = "",
        Value = "󰎠",
        Enum = "",
        Keyword = "󰌋",
        Snippet = "",
        Color = "󰏘",
        File = "󰈙",
        Reference = "",
        Folder = "󰉋",
        EnumMember = "",
        Constant = "󰏿",
        Struct = "",
        Event = "",
        Operator = "󰆕",
        TypeParameter = "󰅲",
    },
}

return M

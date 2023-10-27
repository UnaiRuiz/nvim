local function augroup(name)
    return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    group = augroup("highlight_yank"),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Recover cursor on leaving nvim (TODO: no funciona)
-- vim.api.nvim_create_autocmd(
--     "RecoverCursor", 
--     { 
--         command = "ExitPre * :set guicursor=a:ver25-blinkon100",
--         group = augroup("recover_cursor"),
--     }
-- )
vim.cmd
[[
    augroup ChangeCursor
        au!
        au ExitPre * :set guicursor=a:ver25-blinkon100
    augroup END
]]
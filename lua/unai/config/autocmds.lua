local function augroup(name) return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true }) end

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup("highlight_yank"),
  callback = function() vim.highlight.on_yank() end,
})

-- Remove spell checking on terminal
vim.api.nvim_create_autocmd("TermOpen", {
  group = augroup("remove_spell_on_term"),
  callback = function() vim.wo.spell = false end,
})

-- Recover cursor on leaving nvim
vim.api.nvim_create_autocmd("VimLeavePre", {
  group = augroup("recover_cursor"),
  callback = function() vim.o.guicursor = "a:ver25-blinkon100" end,
})

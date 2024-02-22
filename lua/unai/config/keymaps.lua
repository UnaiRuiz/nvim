local map = vim.keymap.set

-- Easier <esc>
map("i", "jj", "<esc>", { silent = true })
map("i", "jk", "<esc>", { silent = true })
map("t", "jj", "<C-\\><C-n><cmd>ToggleTerm<CR>", { noremap = true })
map("t", "jk", "<C-\\><C-n>", { noremap = true })

-- Easier previous/next navigation for spanish ISO layout
-- map("n", ">", "[", { silent = true, remap = true })
-- map("n", "<", "]", { silent = true, remap = true })

-- System Clipboard
map({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to clipboard" })

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })
map("t", "<C-h>", "<cmd>wincmd h<CR>", { desc = "Go to left window" })
map("t", "<C-j>", "<cmd>wincmd j<CR>", { desc = "Go to lower window" })
map("t", "<C-k>", "<cmd>wincmd k<CR>", { desc = "Go to upper window" })
map("t", "<C-l>", "<cmd>wincmd l<CR>", { desc = "Go to right window" })

-- Resize window using <ctrl> arrow keys
map({ "n", "t" }, "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map({ "n", "t" }, "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map({ "n", "t" }, "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map({ "n", "t" }, "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Move Lines
map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- Buffers
map("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
map("n", "[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
map("n", "]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })

-- Windows
map("n", "<leader>ww", "<C-W>p", { desc = "Other window" })
map("n", "<leader>wd", "<C-W>c", { desc = "Delete window" })
map("n", "<leader>w-", "<cmd>wincmd s<bar>wincmd w<cr>", { desc = "Split window below" })
map("n", "<leader>w+", "<cmd>wincmd v<bar>wincmd w<cr>", { desc = "Split window right" })
map("n", "<leader>-", "<cmd>wincmd s<bar>wincmd w<cr>", { desc = "Split window below" })
map("n", "<leader>+", "<cmd>wincmd v<bar>wincmd w<cr>", { desc = "Split window right" })

-- Tabs
map("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
map("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
map("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
map("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
map("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- New file
map("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

-- LSP
map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "gr", vim.lsp.buf.references, { desc = "Go to references" })
map("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
map("n", "K", vim.lsp.buf.hover, { desc = "Show info" })
map("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "Show signature help" })
map("n", "<space>D", vim.lsp.buf.type_definition, { desc = "Show type definition" })
map("n", "<space>rn", vim.lsp.buf.rename, { desc = "Rename" })
map({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, { desc = "Code action" })

-- ToggleTerm
map({ "n", "t" }, "<C-t>h", "<cmd>ToggleTerm size=20 direction=horizontal<CR>", { desc = "Toggle Terminal" })
map({ "n", "t" }, "<C-t>f", "<cmd>ToggleTerm direction=float<CR>", { desc = "Toggle Terminal" })

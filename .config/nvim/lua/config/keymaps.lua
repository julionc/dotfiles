-- ==========================================
-- Neovim custom keymaps
-- ==========================================

local map = vim.keymap.set

-- Faster scrolling
map("n", "J", "10j")
map("n", "K", "10k")

-- Fast saving and quitting
map("n", "<leader>w", ":w!<CR>")
map("n", "<leader>q", ":q!<CR>")

-- Alias commands
vim.api.nvim_create_user_command("W", "w", {})
vim.api.nvim_create_user_command("Q", "q", {})
vim.api.nvim_create_user_command("WQ", "wq", {})
vim.api.nvim_create_user_command("Wq", "wq", {})

-- Plugins
map("n", "<leader>n", ":NERDTreeToggle<CR>")
map("n", "<C-p>", ":CtrlP<CR>")
map("n", "<leader>8", ":TagbarToggle<CR>")
map("n", "<F8>", ":TagbarToggle<CR>")
map("n", "<C-t>", ":TagbarToggle<CR>")

-- vim-test
map("n", "<leader>t", ":TestNearest<CR>", { silent = true })
map("n", "<leader>T", ":TestFile<CR>", { silent = true })
map("n", "<leader>a", ":TestSuite<CR>", { silent = true })
map("n", "<leader>l", ":TestLast<CR>", { silent = true })
map("n", "<leader>g", ":TestVisit<CR>", { silent = true })

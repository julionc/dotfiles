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
map("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Toggle file explorer" })
map("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find files" })
map("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Live grep" })
map("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Find buffers" })
map("n", "<leader>fh", ":Telescope help_tags<CR>", { desc = "Help tags" })

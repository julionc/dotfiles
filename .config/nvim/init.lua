-- ==========================================
-- Neovim main entry point
-- ==========================================

-- Leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Load core configuration
require("config.options")
require("config.keymaps")

-- Load plugin manager
require("config.lazy")

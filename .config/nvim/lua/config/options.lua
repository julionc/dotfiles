-- ==========================================
-- Neovim general options
-- ==========================================

local opt = vim.opt

-- Encoding and UI
opt.encoding = "utf-8"
opt.number = true
opt.mouse = "a"
opt.termguicolors = true

-- Indentation
opt.autoindent = true
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2

-- Status line
opt.laststatus = 2

-- Clipboard
opt.clipboard = "unnamedplus"

-- Colors
-- vim.cmd("set background=light")
-- vim.cmd("colorscheme dracula")

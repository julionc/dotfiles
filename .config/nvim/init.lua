-- ==========================================
-- Basic Neovim Configuration (init.lua)
-- Migrated from old init.vim with vim-plug
-- Using lazy.nvim as plugin manager
-- ==========================================

-- Set <leader> keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Bootstrap lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  print("Installing lazy.nvim plugin manager...")
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugin specification
require("lazy").setup({
  -- Sensible defaults
  { "tpope/vim-sensible" },

  -- Navigation
  { "ctrlpvim/ctrlp.vim" },
  { "preservim/nerdtree", cmd = "NERDTreeToggle" },
  { "majutsushi/tagbar", cmd = "TagbarToggle" },
  { "mileszs/ack.vim" },

  -- Editing
  { "ervandew/supertab" },
  { "tpope/vim-surround" },
  { "sickill/vim-pasta" },

  -- Git
  { "airblade/vim-gitgutter" },
  { "cohama/agit.vim", cmd = { "Agit", "AgitFile" } },

  -- Testing
  { "janko-m/vim-test" },
  { "benmills/vimux" },

  -- UI
  { "itchyny/lightline.vim" },
  { "editorconfig/editorconfig-vim" },
  { "junegunn/fzf.vim" },
  { "tpope/vim-commentary" },
  { "scrooloose/syntastic" },
  { "Shougo/neocomplete.vim" },
  { "sheerun/vim-polyglot" },
  { "sjl/vitality.vim" },

  -- Colorschemes
  { "chriskempson/tomorrow-theme", rtp = "vim/" },
  { "sickill/vim-monokai" },
  { "junegunn/seoul256.vim" },
  { "joshdick/onedark.vim" },
  { "Mofiqul/dracula.nvim" },

  -- Ruby
  { "ngmy/vim-rubocop" },
  { "tpope/vim-rails", ft = "ruby" },
})

-- ======================
-- General settings
-- ======================
vim.opt.autoindent = true
vim.opt.encoding = "utf-8"
vim.opt.number = true
vim.opt.mouse = "a"
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.laststatus = 2
vim.opt.background = "light" -- alternatives: "dark"

-- Default colorscheme
vim.cmd("colorscheme dracula")

-- ======================
-- Keymaps
-- ======================
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Faster scrolling
map("n", "J", "10j", opts)
map("n", "K", "10k", opts)

-- Save and quit
map("n", "<leader>w", ":w!<CR>", opts)
map("n", "<leader>q", ":q!<CR>", opts)

-- Alias commands
vim.cmd([[
  command! WQ wq
  command! Wq wq
  command! W w
  command! Q q
]])

-- NerdTree
map("n", "<leader>n", ":NERDTreeToggle<CR>", opts)

-- CtrlP
map("n", "<C-p>", ":CtrlP<CR>", opts)

-- Tagbar
map("n", "<leader>8", ":TagbarToggle<CR>", opts)
map("n", "<F8>", ":TagbarToggle<CR>", opts)
map("n", "<C-t>", ":TagbarToggle<CR>", opts)

-- vim-test
map("n", "<leader>t", ":TestNearest<CR>", opts)
map("n", "<leader>T", ":TestFile<CR>", opts)
map("n", "<leader>a", ":TestSuite<CR>", opts)
map("n", "<leader>l", ":TestLast<CR>", opts)
map("n", "<leader>g", ":TestVisit<CR>", opts)

-- ======================
-- Plugin configs
-- ======================

-- Lightline
vim.g.lightline = {
  colorscheme = "wombat",
  component = {
    readonly = "%{&readonly?'x':''}"
  },
  separator = { left = "", right = "" },
  subseparator = { left = "|", right = "|" }
}

-- NerdTree
vim.g.NERDTreeMinimalUI = 1

-- Syntastic
vim.g.syntastic_always_populate_loc_list = 1
vim.g.syntastic_auto_loc_list = 1
vim.g.syntastic_check_on_open = 1
vim.g.syntastic_check_on_wq = 0

-- Ruby on macOS
if vim.fn.has("mac") == 1 then
  vim.g.syntastic_ruby_mri_exec = os.getenv("HOME") .. "/.rbenv/shims/ruby"
end

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Python highlight
vim.g.python_highlight_all = 1

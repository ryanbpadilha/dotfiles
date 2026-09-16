local opt = vim.opt
local set = vim.keymap.set
local cmd = vim.cmd

-- General Settings
opt.number = true          -- Show line numbers
opt.relativenumber = true  -- Show relative line numbers
opt.tabstop = 4            -- 4 spaces per tab
opt.shiftwidth = 4         -- 4 spaces per auto-indent step
opt.expandtab = true       -- Convert tabs to spaces
opt.smartindent = true     -- Auto-indent new lines
opt.wrap = false           -- Disable line wrapping
opt.termguicolors = true   -- Enable 24-bit RGB colors
opt.scrolloff = 8          -- Keep 8 lines visible above/below cursor
opt.ignorecase = true      -- Case-insensitive searching...
opt.smartcase = true       -- ...unless capital letters are used
opt.signcolumn = "yes"     -- Always display sign column to prevent text jumping

-- System Clipboard Integration (Wayland / wl-clipboard compatible)
opt.clipboard = "unnamedplus"

-- Keybindings
vim.g.mapleader = " "          -- Set spacebar as the leader key

-- Clear search highlighting with <Leader>h
set("n", "Esc", "<cmd>nohlsearch<CR>", { silent = true })

-- Quick split navigation
set("n", "<C-h>", "<C-w>h", { silent = true })
set("n", "<C-j>", "<C-w>j", { silent = true })
set("n", "<C-k>", "<C-w>k", { silent = true })
set("n", "<C-l>", "<C-w>l", { silent = true })

-- File Explorer toggle (built-in Netrw)
set("n", "<leader>e", "<cmd>Ex<CR>", { silent = true })
set("n", "<leader>w", "<cmd>w<CR>", { silent = true}, { desc = "Save file" })
set("n", "<leader>q", "<cmd>q<CR>", { silent = true}, { desc = "Quit file" })
set("n", "<leader>Q", "<cmd>qa!<CR>", { silent = true}, { desc = "Quit Neovim" })

-- Native Syntax & Theme
cmd("syntax on")
cmd("filetype plugin indent on")
cmd("colorscheme habamax") -- or "gruvbox"

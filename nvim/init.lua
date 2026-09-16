-- ~/.config/nvim/init.lua

-------------------------------------------------------------------------------
-- 1. General Editor Options
-------------------------------------------------------------------------------
local opt = vim.opt

opt.number = true          -- Show absolute line number on the cursor line
opt.relativenumber = true  -- Show relative line numbers for motion shortcuts
opt.tabstop = 2            -- Render visual TAB characters as 4 spaces
opt.shiftwidth = 2         -- Number of spaces inserted per indentation level
opt.expandtab = true       -- Convert TAB keypresses into spaces
opt.smartindent = true     -- Insert indents automatically on new lines
opt.scrolloff = 999        -- Keep cursor vertically centered on screen
opt.wrap = true            -- Enable visual line wrapping
opt.linebreak = true       -- Soft wrap at word boundaries (no mid-word splits)
opt.breakindent = true     -- Preserve line indentation when text wraps visually
opt.colorcolumn = "80"     -- Visual ruler indicating boundary
opt.textwidth = 80         -- Hard cap visual wrap width to column 80
opt.termguicolors = true   -- Enable 24-bit RGB colors in the terminal
opt.ignorecase = true      -- Case-insensitive search queries...
opt.smartcase = true       -- ...unless capital letters are explicitly typed
opt.signcolumn = "yes"     -- Reserve sign column space to prevent text shifting
opt.background = "dark"    -- Prefer dark background variants for themes

-- System Clipboard Integration (Wayland / wl-clipboard compatible)
opt.clipboard = "unnamedplus"

-------------------------------------------------------------------------------
-- 2. Leader Key & Custom Mappings
-------------------------------------------------------------------------------
local set = vim.keymap.set

-- Set spacebar as the primary leader key
vim.g.mapleader = " "

-- Quick Navigation & File Operations
set("n", "<Esc>", "<cmd>nohlsearch<CR>", { silent = true, desc = "Clear search highlight" })
set("n", "<leader>e", "<cmd>Ex<CR>", { silent = true, desc = "Open Netrw file explorer" })
set("n", "<leader>w", "<cmd>w<CR>", { silent = true, desc = "Save active file" })
set("n", "<leader>q", "<cmd>q<CR>", { silent = true, desc = "Quit active buffer" })
set("n", "<leader>Q", "<cmd>qa!<CR>", { silent = true, desc = "Force quit all buffers" })

-- Window Split Navigation (<Ctrl> + h/j/k/l)
set("n", "<C-h>", "<C-w>h", { silent = true, desc = "Focus window left" })
set("n", "<C-j>", "<C-w>j", { silent = true, desc = "Focus window down" })
set("n", "<C-k>", "<C-w>k", { silent = true, desc = "Focus window up" })
set("n", "<C-l>", "<C-w>l", { silent = true, desc = "Focus window right" })

-- Line Display Modifications
set({"n", "v"},"<A-z>", "<cmd>set wrap!<CR>", { silent = true, desc = "Toggle line wrap" })

-- Visual Mode Indentation (Retains selection after shifting)
set("v", "<Tab>", ">gv", { silent = true, desc = "Shift selection right" })
set("v", "<S-Tab>", "<gv", { silent = true, desc = "Shift selection left" })

-- Visual Line Dragging (Moves selected lines up/down and auto-indents)
set("v", "J", ":m '>+1<CR>gv=gv", { silent = true, desc = "Move selection down" })
set("v", "K", ":m '<-2<CR>gv=gv", { silent = true, desc = "Move selection up" })

-------------------------------------------------------------------------------
-- 3. Syntax Highlighting & Colorscheme
-------------------------------------------------------------------------------
local cmd = vim.cmd

cmd("syntax on")
cmd("filetype plugin indent on")
cmd("colorscheme habamax") -- Built-in theme (or "gruvbox")[cite: 1]


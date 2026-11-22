-- =========================
-- OPÇÕES
-- =========================

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.termguicolors = true
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"

vim.opt.signcolumn = "yes"
vim.opt.cursorline = true

vim.g.mapleader = " "

-- =========================
-- LAZY.NVIM
-- =========================

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

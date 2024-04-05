local opt = vim.opt

vim.g.mapleader = " "

opt.laststatus = 3
opt.showmode = false
opt.clipboard = "unnamedplus"

opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2

opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.wrap = false
opt.ruler = false

opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true
opt.updatetime = 250

local is_windows = vim.loop.os_uname().sysname == "Window_NT"
vim.env.PATH = vim.env.PATH .. (is_windows and ";" or ":") .. vim.fn.stdpath("data") .. "/mason/bin"

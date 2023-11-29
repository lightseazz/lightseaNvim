-- disable netrw at the very start of your init.lua for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- like let in vimscript
-- set options (like :set)
local set = vim.opt
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.number = true
set.clipboard = "unnamedplus"

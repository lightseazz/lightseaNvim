-- set options (like :set)
local set = vim.opt
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.number = true
set.clipboard = "unnamedplus"

-- command abbreviation 
-- use :diff (:w !diff % - ) to show what is modified
vim.cmd("abb diff w !diff % -")

-- set options (like :set)
local set = vim.opt
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.number = true
set.clipboard = "unnamedplus"
set.ignorecase = true
set.relativenumber = true

-- -- folding
-- vim.opt.foldmethod = 'expr'
-- vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
-- vim.opt.foldenable = false

-- command abbreviation 
vim.cmd("abb diff w !diff % -") --show diff
vim.cmd("abb m mks! ")
vim.cmd("abb hp split")
vim.cmd("abb vp vsplit")

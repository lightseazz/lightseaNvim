local set = vim.opt
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.number = true
set.clipboard = "unnamedplus"
set.ignorecase = true

-- better for wrap
set.showbreak = "> "
set.linebreak = true
set.breakindent = true

-- command abbreviation
vim.cmd.cnoreabbrev("m mks!")

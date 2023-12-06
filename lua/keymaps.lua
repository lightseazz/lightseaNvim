vim.g.mapleader = " "
vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })
vim.keymap.set("n", "<A-w>", function() vim.cmd(":bdelete") end, {silent = true})
-- vim.keymap.set("i", "jj", "<ESC>")

-- http://www.kevinli.co/posts/2017-01-19-multiple-cursors-in-500-bytes-of-vimscript/
vim.keymap.set("n", "cn", "*``cgn", {noremap = true })


require("telescope").setup {
	pickers = {
		buffers = {
			initial_mode = "normal",
		}
	},
}
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>/', builtin.live_grep, {})
vim.keymap.set('n', '<leader><leader>', builtin.buffers, {})
vim.keymap.set('n', '<leader>th', builtin.help_tags, {})

require "plugin/telescope/file_browser"

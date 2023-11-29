require("telescope").setup {
	pickers = {
		buffers = {
			initial_mode = "normal",
		}
	},
	extensions = {
		file_browser = {
			display_stat = { date = true },
			dir_icon = " ",
			initial_mode = "normal",
		}
	}
}
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>/', builtin.live_grep, {})
vim.keymap.set('n', '<leader><Tab>', builtin.buffers, {})
vim.keymap.set('n', '<leader>th', builtin.help_tags, {})

-- open file_browser with the path of the current buffer
vim.api.nvim_set_keymap(
	"n",
	"<leader>d",
	":Telescope file_browser path=%:p:h select_buffer=true<CR>",
	{ noremap = true }
)

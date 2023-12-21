local actions = require "telescope.actions"

require("telescope").setup {
	defaults = {
		dynamic_preview_title = true,
		mappings = {
			i = {
				["<C-j>"] = actions.preview_scrolling_up,
				["<C-k>"] = actions.preview_scrolling_down,
				["<C-h>"] = actions.preview_scrolling_left,
				["<C-l>"] = actions.preview_scrolling_right,
			},
			n = {
				["<C-j>"] = actions.preview_scrolling_up,
				["<C-k>"] = actions.preview_scrolling_down,
				["<C-h>"] = actions.preview_scrolling_left,
				["<C-l>"] = actions.preview_scrolling_right,
			}
		}
	},
	pickers = {
		buffers = {
			theme = "ivy",
			initial_mode = "normal",
			sort_mru=true,
			ignore_current_buffer=true,
			mappings = {
				n = {
					['dd'] = actions.delete_buffer,
				}
			}
		},
		find_files = {
			theme = "ivy",
		},
		live_grep = {
			theme = "ivy",
		},
		lsp_references = {
			theme = "ivy",
			initial_mode = "normal",
		},
		lsp_workspace_symbols = {
			-- theme="ivy",
			initial_mode = "normal",
		}
	},

}
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>/', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>gh', builtin.help_tags, {})
vim.keymap.set('n', 'gr', builtin.lsp_references, {})
vim.keymap.set('n', 'gs', builtin.lsp_workspace_symbols, {})

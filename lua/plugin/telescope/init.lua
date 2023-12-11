require("telescope").setup {
	defaults = {
		dynamic_preview_title = true,
		mappings = {
			n = {
				-- ['dd'] = require("telescope.actions").delete_buffer;
			}
		}
	},
	pickers = {
		buffers = {
			theme = "ivy",
			initial_mode = "normal",
			mappings = {
				n = {
					['dd'] = require("telescope.actions").delete_buffer,
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
vim.keymap.set('n', '<leader><leader>', builtin.buffers, {})
vim.keymap.set('n', '<leader>th', builtin.help_tags, {})
vim.keymap.set('n', 'gr', builtin.lsp_references, {})
vim.keymap.set('n', 'gs', builtin.lsp_workspace_symbols, {})

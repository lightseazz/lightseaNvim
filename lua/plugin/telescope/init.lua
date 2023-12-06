require("telescope").setup {
	pickers = {
		buffers = {
			initial_mode = "normal",
			mappings = {
				n = {
					['dd'] = require("telescope.actions").delete_buffer;
				}
			}
		},
		lsp_references = {
			initial_mode = "normal",
		},
		lsp_workspace_symbols = {
			initial_mode = "normal",
		}
	},
	defaults = {
		mappings = {
			n = {
				-- ['dd'] = require("telescope.actions").delete_buffer;
			}
		}
	}
}
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>/', builtin.live_grep, {})
vim.keymap.set('n', '<leader><leader>', builtin.buffers, {})
vim.keymap.set('n', '<leader>th', builtin.help_tags, {})
vim.keymap.set('n', 'gr', builtin.lsp_references, {})
vim.keymap.set('n', 'gs', builtin.lsp_workspace_symbols, {})

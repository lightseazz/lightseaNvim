local actions = require "telescope.actions"
local fb_actions = require "telescope".extensions.file_browser.actions

require("telescope").setup {
	extensions = {
		file_browser = {
			display_stat = { date = true },
			dir_icon = " ",
			initial_mode = "normal",
			hijack_netrw = true,
			mappings = {
				["n"] = {
					["o"] = false;
					["e"] = false;
					["l"] = actions.select_default;
					["h"] = fb_actions.goto_parent_dir;
					["H"] = fb_actions.goto_home_dir;
					["."] = fb_actions.toggle_hidden;
					["<Tab>"] = actions.toggle_selection + actions.move_selection_better;
				}
			}
		}
	}
}

require("telescope").load_extension "file_browser"

-- open file_browser with the path of the current buffer
vim.api.nvim_set_keymap(
	"n",
	"<leader>d",
	":Telescope file_browser path=%:p:h select_buffer=true<CR>",
	{ noremap = true }
)

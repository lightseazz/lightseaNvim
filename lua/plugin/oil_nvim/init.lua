require("oil").setup(
	{
		delete_to_trash = true,
		keymaps = {
			["<Tab>"] = "actions.parent",
			["<leader>d"] = "actions.close",
		}
	}
)

vim.keymap.set('n', "<leader>d", function() vim.api.nvim_command(":Oil ") end)

require("oil").setup(
	{
		delete_to_trash = true,
		keymaps = {
			["<Tab>"] = "actions.parent",
			["<leader>e"] = "actions.close",
		}
	}
)

vim.keymap.set('n', "<leader>e", function() vim.api.nvim_command(":Oil ") end)

require("oil").setup(
	{
		keymaps = {
			["<A-h>"] = "actions.parent",
			["<A-l>"] = "actions.select",
		}

	}
)

vim.keymap.set('n',"<leader>d", function() vim.api.nvim_command(":Oil ") end)

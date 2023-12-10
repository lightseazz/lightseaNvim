require("oil").setup(
	{
		delete_to_trash = true,
		keymaps = {
			["<Tab>"] = "actions.parent",
			-- ["<A-l>"] = "actions.select",
		}

	}
)

vim.keymap.set('n',"<leader>d", function() vim.api.nvim_command(":Oil ") end)

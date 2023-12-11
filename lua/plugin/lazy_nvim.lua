local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- lsp
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	{
		"neovim/nvim-lspconfig",
	},
	-- typescript tools (lsp)
	{
		"pmizio/typescript-tools.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
		opts = {},
	},

	-- treesitter
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	"RRethy/nvim-treesitter-endwise",

	-- nvim-cmp
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-nvim-lsp',
	'saadparwaiz1/cmp_luasnip',
	'L3MON4D3/LuaSnip',

	-- telescope
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},

	"nvim-tree/nvim-web-devicons",

	-- oilnvim
	{
		"stevearc/oil.nvim",
		-- version = '*',
	},

	--neodev
	{
		"folke/neodev.nvim",
		opts = {}
	},

	-- autopairs
	{
		'windwp/nvim-autopairs',
		-- event = "InsertEnter",
		opts = {}
	},

	-- autotags
	'windwp/nvim-ts-autotag',

	-- comment
	{
		'numToStr/Comment.nvim',
		lazy = false,
	},

	-- scheme
	"rebelot/kanagawa.nvim",
})

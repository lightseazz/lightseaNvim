require'nvim-treesitter.configs'.setup {
	-- built-in modules
  ensure_installed = {"lua", "vimdoc", "bash", "typescript", "javascript" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
	incremental_selection = {
    enable = true,
    keymaps = {
			init_selection = '<CR>',
      scope_incremental = '<CR>',
      node_incremental = '<TAB>',
      node_decremental = '<S-TAB>',
     },
  },
	indent = {
    enable = true
  },
	-- external modules
	autotag = {
    enable = true,
    enable_rename = true,
    enable_close = true,
    enable_close_on_slash = true,
  },
	endwise = {
		enable = true;
	}
}

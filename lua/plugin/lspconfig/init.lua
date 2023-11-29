local lspconfig = require("lspconfig")
lspconfig.bashls.setup {}
lspconfig.lua_ls.setup {
 settings = {
    Lua = {
      diagnostics = {
	-- Get the language server to recognize the `vim` global
	globals = {'vim'},
      },
    },
  },
 }

lspconfig.tsserver.setup {}


require("plugin/lspconfig/keymap")


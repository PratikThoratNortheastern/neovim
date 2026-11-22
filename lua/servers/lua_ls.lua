return function(on_attach, capabilities)
	vim.lsp.config("lua_ls", {
		on_attach = on_attach,
		capabilities = capabilities,
		settings = {
			Lua = {

				diagnostics = {
					globals = { "vim" },
				},
				workspace = {
					library = {
						vim.fn.expand("$VIMRUNTIME/lua"),
						vim.fn.stdpath("config") .. "/lua",
					},
				},
			},
		},
	})
	vim.lsp.enable("lua_ls")
end

return function(on_attach, capabilities)
	vim.lsp.config("ts_ls", {
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = {
			"typescript",
			"javascript",
			"typescriptreact",
			"javascriptreact",
		},
		settings = {
			typescript = {
				indentStyle = "space",
				indentSize = 2,
			},
		},
	})

	vim.lsp.enable("ts_ls")
end

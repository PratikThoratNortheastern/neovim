return function(on_attach, capabilities)
	vim.lsp.config("emmet_ls", {
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = {
			"typescript",
			"javascript",
			"javascriptreact",
			"typescriptreact",
			"css",
			"sass",
			"scss",
			"svelte",
			"vue",
		},
	})
	vim.lsp.enable("emmet_ls")
end

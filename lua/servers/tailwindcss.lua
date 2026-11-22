return function(on_attach, capabilities)
	vim.lsp.config("tailwindcss", {
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = {
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"vue",
			"svelte",
		},
	})
	vim.lsp.enable("tailwindcss")
end

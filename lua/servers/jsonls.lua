return function(on_attach, capabilities)
	vim.lsp.config("jsonls", {
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = { "json", "jsonc" },
	})

	vim.lsp.enable("jsonls")
end

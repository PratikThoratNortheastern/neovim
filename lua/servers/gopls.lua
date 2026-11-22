return function(on_attach, capabilities)
	vim.lsp.config("gopls", {
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = { "go" },
	})
end

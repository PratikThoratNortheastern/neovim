return function(on_attach, capabilities)
	vim.lsp.config("dockerls", {
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = { "dockerfile" },
	})
	vim.lsp.enable("dockerls")
end

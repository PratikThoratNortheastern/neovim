return function(on_attach, capabilities)
	vim.lsp.config("bashls", {
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = { "sh", "bash", "zsh" },
	})
	vim.lsp.enable("bashls")
end

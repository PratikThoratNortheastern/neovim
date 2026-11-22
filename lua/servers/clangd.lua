return function(on_attach, capabilities)
	vim.lsp.config("clandg", {
		on_attach = on_attach,
		capabilities = capabilities,
		cmd = {
			"clandg",
			"--offset-encoding=utf-16",
		},
		filetypes = { "c", "cpp" },
	})
	vim.lsp.enable("clangd")
end

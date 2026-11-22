return function(on_attach, capabilities)
	vim.lsp.config("pyright", {
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = { "python" },
		settings = {
			pyright = {
				disableOrganizeImports = false,
				analysis = {
					useLibraryCodeForTypes = true,
					autoSearchPaths = true,
					diagnosticMode = "workspace",
					autoImportCompletions = true,
				},
			},
		},
	})

	vim.lsp.enable("pyright")
end

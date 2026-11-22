return {
	"luckasRanarison/tailwind-tools.nvim",
	name = "tailwind-tools",
	build = ":UpdateRemotePlugins",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"neovim/nvim-lspconfig",
	},
	opts = {
		server = {
			override = false, -- prevents tailwind-tools from calling legacy lspconfig.tailwindcss.setup()
		},
	},
}

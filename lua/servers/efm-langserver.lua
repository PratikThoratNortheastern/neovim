-- ================================================================================================
-- TITLE : efm-langserver
-- ABOUT : a general purpose language server protocol implemented here for linters/formatters
-- LINKS :
--   > github : https://github.com/mattn/efm-langserver
--   > configs: https://github.com/creativenull/efmls-configs-nvim/tree/main
-- ===============================================================================================

return function(on_attach, capabilities)
	local luacheck = require("efmls-configs.linters.luacheck")
	local stylua = require("efmls-configs.formatters.stylua")
	local flake8 = require("efmls-configs.linters.flake8")
	local black = require("efmls-configs.formatters.black")
	local eslint_d = require("efmls-configs.linters.eslint_d")
	local prettier = require("efmls-configs.formatters.prettier")
	local fixjson = require("efmls-configs.formatters.fixjson")
	local revive = require("efmls-configs.linters.revive")
	local gofumpt = require("efmls-configs.formatters.gofumpt")
	local shellcheck = require("efmls-configs.linters.shellcheck") -- bash linter
	local shfmt = require("efmls-configs.formatters.shfmt") -- bash formatter
	local hadolint = require("efmls-configs.linters.hadolint") -- docker linter
	local cpplint = require("efmls-configs.linters.cpplint")
	local clang_format = require("efmls-configs.formatters.clang-format")

	vim.lsp.config("efm", {
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = {
			"c",
			"cpp",
			"css",
			"docker",
			"html",
			"javascript",
			"javascriptreact",
			"json",
			"jsonc",
			"lua",
			"markdown",
			"python",
			"solidity",
			"svelte",
			"typescript",
			"typescriptreact",
			"vue",
			"go",
			"sh",
		},
		init_options = {
			documentFormatting = true,
			documentRangeFormatting = true,
			hover = true,
			documentSymbol = true,
			codeAction = true,
			completion = true,
		},
		settings = {
			languages = {
				c = { clang_format, cpplint },
				cpp = { clang_format, cpplint },
				javascript = { eslint_d, prettier },
				javascriptreact = { eslint_d, prettier },
				json = { fixjson, eslint_d },
				jsonc = { fixjson, eslint_d },
				lua = { luacheck, stylua },
				python = { flake8, black },
				svelte = { eslint_d, prettier },
				typescript = { eslint_d, prettier },
				typescriptreact = { eslint_d, prettier },
				vue = { eslint_d, prettier },
				css = { prettier },
				docker = { prettier, hadolint },
				html = { prettier },
				markdown = { prettier },
				solidity = { prettier },
				go = { revive, gofumpt },
				sh = { shfmt, shellcheck },
			},
		},
	})

	vim.lsp.enable("efm")
end

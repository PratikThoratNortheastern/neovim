-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore


return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- Safely attempt to require lualine; if it fails to load on a fresh sync, return silently
		local status_ok, lualine = pcall(require, "lualine")
		if not status_ok then
			return
		end


		lualine.setup({
			options = {
				theme = "auto",
				component_separators = '',
				section_separators = { left = '', right = '' },
			},
			sections = {
				lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
				lualine_b = { 'filename', 'branch' },
				lualine_c = { '%=' },
				lualine_x = {},
				lualine_y = { 'filetype', 'progress' },
				lualine_z = {
					{ 'location', separator = { right = '' }, left_padding = 2 },
				},
			},
			inactive_sections = {
				lualine_a = { 'filename' },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { 'location' },
			},
			tabline = {},
			extensions = {},
		})
	end,
}

local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", {bg = "none" })
end
return {
    {
  	"folke/tokyonight.nvim",
	  lazy = false,
  	priority = 1000,
  	config = function()
	--    vim.cmd.colorscheme "tokyonight"
	    enable_transparency()
	  end
    },
{
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = { bold = true },
      },
    },
  },
  {
    "maxmx03/solarized.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      variant = "winter", -- "spring" | "summer" | "autumn" | "winter"
      transparent = { enabled = true },
    },
  },

{
  "fraeso/xcodedark.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("xcodedark").setup({
      transparent = true, -- or false if you prefer solid background

      integrations = {
        telescope = true,
        nvim_tree = true,
        gitsigns = true,
        bufferline = true,
        incline = true,
        lazygit = true,
        which_key = true,
        notify = true,
        snacks = true,
        blink = true,
      },

      terminal_colors = true,
    })
    vim.cmd.colorscheme("xcodedark")
  end,
},

  {
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 999,
		config = function()
			local palette = require("nightfox.palette").load("duskfox")

			require("nightfox").setup({
				options = {
					transparent = false,
				},
				groups = {
					duskfox = {
						Visual = { bg = palette.bg1 },
					},
				},
			})
  	--vim.cmd("colorscheme duskfox")
		end,
	},
  {
    "savq/melange-nvim",
    lazy = false,
    priority = 998,
    config = function()
--      vim.cmd("colorscheme melange")
    end
  },



}

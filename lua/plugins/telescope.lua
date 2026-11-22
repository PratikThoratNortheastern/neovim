return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'andrew-george/telescope-themes',
    },

    config = function()
	local builtin = require('telescope.builtin')
  local telescope = require('telescope')
  telescope.setup({
    extensions = {
      themes = {
        enable_previewer = true,
        enable_live_preview = true,
        persist = {
          enabled = true,
          path = vim.fn.stdpath("config").."/lua/current-theme.lua",
        },
      },
    },
  })
  telescope.load_extension("themes")
  vim.keymap.set('n', '<leader>th', "<cmd>Telescope themes<cr>", {desc="Theme Switcher"})
	vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
	vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
	vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
	vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    end
    }


# Neovim Configurations

Personal Neovim setup managed with [`lazy.nvim`](https://github.com/folke/lazy.nvim), organized into modular configuration, plugin, LSP server, and utility layers.

## Highlights

- **Plugin Management:** `lazy.nvim` with lockfile support (`lazy-lock.json`) and persistent theme state (`lua/current-theme.lua`).
- **Navigation & Search:** `telescope.nvim`, `fzf-lua`, `nvim-tree.lua`, `which-key.nvim`, and seamless split/pane movement via `nvim-tmux-navigator.nvim`.
- **Editing, UI & Focus:** `nvim-treesitter`, `nvim-cmp`, `mini.nvim`, `lualine.nvim`, `trouble.nvim`, `zen-mode.nvim`, and `codeium.lua`.
- **Git Workflow:** Inline hunk tracking and staging via `gitsigns-nvim.lua` alongside `vim-fugitive.lua` (and `lazygit` in terminal workflows).
- **LSP & Language Support:** `nvim-lspconfig` with per-server configs under `lua/servers/` (`lua_ls`, `ts_ls`, `pyright`, `gopls`, `clangd`, `bashls`, `dockerls`, `emmet_ls`, `jsonls`, `tailwindcss`, `yamlls`, `efm-langserver`) and shared helpers in `lua/utils/`.

## Installation

1. Back up any existing Neovim config and clone this repository to `~/.config/nvim`:

   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null || true
   git clone [https://github.com/PratikThoratNortheastern/neovim.git](https://github.com/PratikThoratNortheastern/neovim.git) ~/.config/nvim
   ```

2. Launch Neovim—`lazy.nvim` will bootstrap and install plugins automatically:

   ```bash
   nvim
   ```

3. Run `:checkhealth` inside Neovim to verify LSP servers, Treesitter parsers, and external CLI dependencies.

## Folder Structure

```text
.
├── init.lua
├── lazy-lock.json
├── lua
│   ├── configs
│   │   ├── autocmds.lua
│   │   ├── globals.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── options.lua
│   ├── current-theme.lua
│   ├── plugins
│   │   ├── codeium.lua
│   │   ├── colors.lua
│   │   ├── emmet.lua
│   │   ├── fzf-lua.lua
│   │   ├── gitsigns-nvim.lua
│   │   ├── lualine-nvim.lua
│   │   ├── mini-nvim.lua
│   │   ├── nvim-cmp.lua
│   │   ├── nvim-lspconfig.lua
│   │   ├── nvim-tmux-navigator.lua
│   │   ├── nvim-tree.lua
│   │   ├── tailwind-tools.lua
│   │   ├── telescope.lua
│   │   ├── treesitter.lua
│   │   ├── trouble-nvim.lua
│   │   ├── vim-fugitive.lua
│   │   ├── webdev-icons.lua
│   │   ├── whichkey.lua
│   │   └── zen-mode.lua
│   ├── servers
│   │   ├── bashls.lua
│   │   ├── clangd.lua
│   │   ├── dockerls.lua
│   │   ├── efm-langserver.lua
│   │   ├── emmet_ls.lua
│   │   ├── gopls.lua
│   │   ├── init.lua
│   │   ├── jsonls.lua
│   │   ├── lua_ls.lua
│   │   ├── pyright.lua
│   │   ├── tailwindcss.lua
│   │   ├── ts_ls.lua
│   │   └── yamlls.lua
│   └── utils
│       ├── diagnostics.lua
│       └── lsp.lua
└── README.md
```

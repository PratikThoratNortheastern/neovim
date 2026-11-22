-- ================================================================================================
-- TITLE : LSP Server Configurations & On-Attach Keymaps
-- ================================================================================================
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local on_attach = require("utils.lsp").on_attach

require("servers.lua_ls")(on_attach, capabilities)
require("servers.pyright")(on_attach, capabilities)
require("servers.gopls")(on_attach, capabilities)
require("servers.jsonls")(on_attach, capabilities)
require("servers.jdtls")(on_attach,capabilities)
require("servers.ts_ls")(on_attach, capabilities)
require("servers.bashls")(on_attach, capabilities)
require("servers.clangd")(on_attach, capabilities)
require("servers.dockerls")(on_attach, capabilities)
require("servers.emmet_ls")(on_attach, capabilities)
require("servers.yamlls")(on_attach, capabilities)
require("servers.tailwindcss")(on_attach, capabilities)

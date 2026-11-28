--
--
-- return function(on_attach, capabilities)
--   local jdtls_path = vim.fn.expand("~/.local/opt/jdtls-1.63.0")
--   local workspace_dir = vim.fn.expand("~/.local/share/jdtls/workspaces")
--
--   vim.fn.mkdir(workspace_dir, "p")
--
--   vim.lsp.config("jdtls", {
--     cmd = {
--       jdtls_path .. "/bin/jdtls",
--       "-data",
--       workspace_dir .. "/" .. vim.fn.fnamemodify(
--         vim.fn.getcwd(),
--         ":p:h:t"
--       ),
--     },
--
--     on_attach = on_attach,
--     capabilities = capabilities,
--
--     root_dir = function(fname)
--       local root = vim.fs.root(fname, {
--         "pom.xml",
--         "build.gradle",
--         "build.gradle.kts",
--         ".git",
--       })
--
--       return root or vim.fs.dirname(fname)
--     end,
--   })
--
--   vim.lsp.enable("jdtls")
-- end
--


return function(on_attach, capabilities)
  local jdtls_path = vim.fn.expand("~/.local/opt/jdtls-1.63.0")
  local workspace_dir = vim.fn.expand("~/.local/share/jdtls/workspaces")

  vim.fn.mkdir(workspace_dir, "p")

  vim.lsp.config("jdtls", {
    cmd = {
      jdtls_path .. "/bin/jdtls",
      "-data",
      workspace_dir .. "/" .. vim.fn.fnamemodify(
        vim.fn.getcwd(),
        ":p:h:t"
      ),
    },

    filetypes = { "java" },

    root_markers = {
      "pom.xml",
      "build.gradle",
      "build.gradle.kts",
      ".git",
    },

    on_attach = on_attach,
    capabilities = capabilities,
  })

  vim.lsp.enable("jdtls")
end

return function(on_attach, capabilities)
  vim.lsp.config("jdtls", {
    on_attach = on_attach,
    capabilities = capabilities,
    root_dir = function(fname)
      local root = vim.fs.root(fname, { "pom.xml", "build.gradle", ".git" })
      return root or vim.fs.dirname(fname)
    end,
  })

  vim.lsp.enable("jdtls")
end

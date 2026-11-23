return {

-- lua/plugins/java.lua (nvim-jdtls config)
{
"mfussenegger/nvim-jdtls",
  ft = "java",
  opts = function(_, opts)
    opts = opts or {}
    opts.cmd = opts.cmd or { "jdtls" }

    table.insert(opts.cmd, "--jvm-arg=-Djava.import.generatesMetadataFilesAtProjectRoot=false")
    table.insert(opts.cmd, "-Xmx2G")

    opts.settings = {
      java = {
        format = {
          enabled = true,
          comments = { enabled = false },
          tabSize = 4,
        },
      },
    }
  end,
},


-- lua/plugins/java.lua (lemminx config)
{
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    servers = {
      lemminx = {
        init_options = {
          settings = {
            xml = {
              format = {
                enabled = true,
                splitAttributes = "preserve",
                maxLineWidth = 280,
              },
            },
            xslt = {
              format = {
                enabled = true,
                splitAttributes = "preserve",
                maxLineWidth = 280,
              },
            },
          },
        },
      },
    },
  },
},
}

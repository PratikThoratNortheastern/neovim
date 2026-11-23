return {

-- lua/plugins/java.lua (nvim-jdtls config)
{
"mfussenegger/nvim-jdtls",
  ft = "java",
  opts = {
    cmd = {
      "jdtls",
      "--jvm-arg=-Djava.import.generatesMetadataFilesAtProjectRoot=false",
      "-Xmx2G",
    },
    settings = {
      java= {
        format = {
          enabled = true,
          comments = {enabled = false},
          tabSize = 4,
        },
      },
    },
  },


  config = function (_,opts)
    vim.g.jdtls_opts = opts
  end
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

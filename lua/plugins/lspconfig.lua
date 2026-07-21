return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { "b0o/schemastore.nvim" },
    config = function()
      require("nvchad.configs.lspconfig").defaults()

      local servers = { "gopls", "basedpyright", "ruff", "jsonls", "yamlls", "helm_ls", "nixd" }

      vim.lsp.config("gopls", {
        -- spawn gopls with cwd = its own root_dir, so the asdf shim resolves
        -- the right Go version per project (works when several Go projects
        -- with different Go versions are open in the same nvim instance).
        cmd = function(dispatchers, config)
          return vim.lsp.rpc.start({ vim.fn.expand("~/.asdf/shims/gopls") }, dispatchers, {
            cwd = config and config.root_dir or vim.uv.cwd(),
          })
        end,
        settings = {
          gopls = {
            gofumpt = true,
            usePlaceholders = true,
            completeUnimported = true,
            staticcheck = true,
            analyses = {
              unusedparams = true,
              shadow = true,
              nilness = true,
              unusedwrite = true,
              useany = true,
            },
            hints = {
              assignVariableTypes = true,
              compositeLiteralFields = true,
              constantValues = true,
              functionTypeParameters = true,
              parameterNames = true,
              rangeVariableTypes = true,
            },
          },
        },
      })

      vim.lsp.config("basedpyright", {
        settings = {
          basedpyright = {
            disableOrganizeImports = true, -- ruff handles imports
            analysis = {
              typeCheckingMode = "standard",
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
              diagnosticMode = "openFilesOnly",
            },
          },
        },
      })

      vim.lsp.config("ruff", {
        init_options = {
          settings = {
            lineLength = 100,
          },
        },
        on_attach = function(client)
          -- defer hover to basedpyright
          client.server_capabilities.hoverProvider = false
        end,
      })

      vim.lsp.config("jsonls", {
        settings = {
          json = {
            schemas = require("schemastore").json.schemas(),
            validate = { enable = true },
          },
        },
      })

      vim.lsp.config("yamlls", {
        settings = {
          yaml = {
            schemaStore = { enable = false, url = "" }, -- use schemastore.nvim instead
            schemas = require("schemastore").yaml.schemas(),
            validate = true,
            format = { enable = true },
            hover = true,
            completion = true,
          },
          redhat = { telemetry = { enabled = false } },
        },
      })

      vim.lsp.config("helm_ls", {
        settings = {
          ["helm-ls"] = {
            yamlls = {
              path = "yaml-language-server",
            },
          },
        },
      })

      vim.lsp.config("nixd", {
        settings = {
          nixd = {
            formatting = {
              command = { "nixfmt" },
            },
          },
        },
      })

      for _, server in ipairs(servers) do
        vim.lsp.enable(server)
      end
    end,
  },

  { "b0o/schemastore.nvim", lazy = true },
}

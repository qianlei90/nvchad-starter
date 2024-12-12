local configs = require "nvchad.configs.lspconfig"

local servers = {
    autotools_ls = {},
    bashls = {},
    docker_compose_language_service = {},
    dockerls = {},
    golangci_lint_ls = {},
    gopls = {},
    harper_ls = {
        settings = {
            ["harper-ls"] = {
                linters = {
                    sentence_capitalization = false,
                },
            },
        },
    },
    helm_ls = {},
    jsonls = {},
    lua_ls = {
        settings = {
            Lua = {
                diagnostics = {
                    globals = {
                        "vim",
                    }
                }
            }
        }
    },
    nginx_language_server = {},
    nil_ls = {},
    protols = {},
    pylsp = {},
    terraformls = {},
    thriftls = {},
    vimls = {},
    yamlls = {},
}

for name, opts in pairs(servers) do
    opts.on_init = configs.on_init
    opts.on_attach = configs.on_attach
    opts.capabilities = configs.capabilities

    require("lspconfig")[name].setup(opts)
end

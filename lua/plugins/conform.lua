return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      go = { "goimports", "gofumpt" },
      python = { "ruff_organize_imports", "ruff_format" },
      json = { "prettier" },
      jsonc = { "prettier" },
      yaml = { "prettier" },
    },
  },
}

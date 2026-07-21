return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter").install({
      "lua",
      "go",
      "gomod",
      "gosum",
      "python",
      "yaml",
      "json",
      "toml",
      "bash",
      "markdown",
      "markdown_inline",
    })
  end,
}

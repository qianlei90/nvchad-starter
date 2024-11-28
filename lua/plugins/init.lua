return {
  {
    "justinmk/vim-sneak",
    lazy = false,
    config = function()
      -- 启用 label 功能
      vim.g['sneak#label'] = 1
    end,
  },
  {
    "tpope/vim-repeat",
    lazy = false
  },
  {
    "tpope/vim-surround",
    lazy = false
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
}

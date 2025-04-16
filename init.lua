vim.g.mapleader = " "
vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"


if vim.g.vscode then
  vim.opt.rtp:prepend(lazypath)
  require "configs.lazy"
else
  if not vim.uv.fs_stat(lazypath) then
    local repo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
  end
  vim.opt.rtp:prepend(lazypath)
  require "configs.lazy"

  -- load theme
  dofile(vim.g.base46_cache .. "syntax")
  dofile(vim.g.base46_cache .. "defaults")
  dofile(vim.g.base46_cache .. "statusline")
end

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)

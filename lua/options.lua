require "nvchad.options"

vim.o.shell = vim.env.HOME .. "/.nix-profile/bin/zsh"

vim.env.PATH = vim.env.HOME .. "/.nix-profile/bin:" .. vim.env.PATH
vim.opt.clipboard = ""

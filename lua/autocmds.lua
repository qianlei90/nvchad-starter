require "nvchad.autocmds"

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "yaml", "yml" },
  callback = function()
    vim.opt_local.foldmethod = "expr"
    vim.opt_local.foldexpr = "v:lua.vim.treesitter.foldexpr()"
    vim.opt_local.foldenable = true
    vim.opt_local.foldlevel = 99
  end,
})

vim.filetype.add {
  pattern = {
    [".*/templates/.*%.ya?ml"] = function(path)
      local chart_dir = path:match "(.*)/templates/"
      if chart_dir and vim.uv.fs_stat(chart_dir .. "/Chart.yaml") then
        return "helm"
      end
    end,
    [".*/templates/.*%.tpl"] = "helm",
    ["helmfile.*%.ya?ml"] = "helm",
  },
}

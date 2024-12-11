require "nvchad.options"

-- 缩进
-- tab 转空格
vim.opt.expandtab = true
-- tab 宽度
vim.opt.tabstop = 4
-- 缩进的空格数
vim.opt.shiftwidth = 4
-- 退格删除的空格数，-1与shiftwidth相等
vim.opt.softtabstop = -1
-- 缩进取整
vim.opt.shiftround = true

-- 其他
-- 括号配对情况,跳转并高亮一下匹配的括号
vim.opt.showmatch = true
-- 显示字符
vim.opt.list = true
-- 一行太长的话不折叠成多行
vim.opt.wrap = false
-- 操作只复制到 * 寄存器
vim.opt.clipboard = ""

-- 打开文件时光标回到上次离开的地方
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local line = vim.fn.line "'\""
    if
      line > 1
      and line <= vim.fn.line "$"
      and vim.bo.filetype ~= "commit"
      and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1
    then
      vim.cmd 'normal! g`"'
    end
  end,
})

-- 自动关闭 quickfix 窗口
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"qf"},
  command = [[nnoremap <buffer> <CR> <CR>:cclose<CR>]]
})

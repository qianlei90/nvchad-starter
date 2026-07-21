require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- Tab 切换快捷键
map("n", "<A-n>", "gt", { desc = "Tab switch to next tab" })
map("n", "<A-p>", "gT", { desc = "Tab switch to previous tab" })
map("n", "<A-t>", "<cmd>tabnew<CR>", { desc = "Tab create new tab" })
map("n", "<A-w>", "<cmd>tabclose<CR>", { desc = "Tab close current tab" })

-- Tab 移动快捷键
map("n", "<A->>", "<cmd>tabmove +1<CR>", { desc = "Tab move right" })
map("n", "<A-lt>", "<cmd>tabmove -1<CR>", { desc = "Tab move left" })

-- Alt+数字 跳转到对应编号的 tab
for i = 1, 9 do
  map("n", "<A-" .. i .. ">", i .. "gt", { desc = "Tab go to tab " .. i })
end

-- 复制当前文件绝对路径到系统剪切板
map("n", "<leader>cp", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify("Copied: " .. path)
end, { desc = "Copy file path to clipboard" })

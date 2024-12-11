require "nvchad.mappings"

-- 切换 Tab
vim.keymap.set('n', '<C-n>', ':tabnext<CR>', { desc = "Next Tab" })
vim.keymap.set('n', '<C-p>', ':tabprev<CR>', { desc = "Previous Tab"})

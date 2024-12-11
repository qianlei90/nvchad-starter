require "nvchad.mappings"

-- 切换 Tab
vim.keymap.set('n', '<C-n>', ':tabnext<CR>', { desc = "Next Tab" })
vim.keymap.set('n', '<C-p>', ':tabprev<CR>', { desc = "Previous Tab"})
-- 移动 Tab
-- TODO: 未生效
-- vim.keymap.set('n', '<S-Left>', '<Ecs>:tabmove -1<CR>', { desc = "Move Tab To Left" })
-- vim.keymap.set('n', '<S-Right>', '<Ecs>:tabmove +1<CR>', { desc = "Move Tabl To Right"})

-- 光标移动
vim.keymap.set('n', 'H', '^', { desc = "Go To Head"})
vim.keymap.set('v', 'H', '^', { desc = "Go To Head"})
vim.keymap.set('n', 'L', '$', { desc = "Go To Tail"})
vim.keymap.set('v', 'L', '$', { desc = "Go To Tail"})
vim.keymap.set('n', 'J', 'L', { desc = "Go To Bottom"})
vim.keymap.set('v', 'J', 'L', { desc = "Go To Bottom"})
vim.keymap.set('n', 'K', 'H', { desc = "Go To Top"})
vim.keymap.set('v', 'K', 'H', { desc = "Go To Top"})

-- 命令模式时的移动
vim.keymap.set('c', '<C-a>', '<Home>')
vim.keymap.set('c', '<C-e>', '<End>')
vim.keymap.set('c', '<A-f>', '<S-Right>')
vim.keymap.set('c', '<A-b>', '<S-Left>')

vim.keymap.set('i', '<C-s>', '<Ecs>:w<CR>')
vim.keymap.set('n', '<C-t>', ':tabnew<CR>')
vim.keymap.set('n', '<C-q>', ':q<CR>')

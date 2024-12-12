require "nvchad.mappings"

-- 切换 Tab
vim.keymap.set('n', '<C-t>', '<cmd>tabnew<CR>', { desc = "open new tab" })
vim.keymap.set('n', '<C-n>', '<cmd>tabnext<CR>', { desc = "next tab" })
vim.keymap.set('n', '<C-p>', '<cmd>tabprev<CR>', { desc = "previous tab"})
-- 移动 Tab
-- TODO: 未生效
-- vim.keymap.set('n', '<S-Left>', '<Ecs>:tabmove -1<CR>', { desc = "Move Tab To Left" })
-- vim.keymap.set('n', '<S-Right>', '<Ecs>:tabmove +1<CR>', { desc = "Move Tab To Right"})

-- 光标移动
vim.keymap.set('n', 'H', '^', { desc = "go to head"})
vim.keymap.set('v', 'H', '^', { desc = "go to head"})
vim.keymap.set('n', 'L', '$', { desc = "go to tail"})
vim.keymap.set('v', 'L', '$', { desc = "go to tail"})
vim.keymap.set('n', 'J', 'L', { desc = "go to bottom"})
vim.keymap.set('v', 'J', 'L', { desc = "go to bottom"})
vim.keymap.set('n', 'K', 'H', { desc = "go to top"})
vim.keymap.set('v', 'K', 'H', { desc = "go to top"})

-- 命令模式时的移动
vim.keymap.set('c', '<C-a>', '<Home>')
vim.keymap.set('c', '<C-e>', '<End>')
vim.keymap.set('c', '<A-f>', '<S-Right>')
vim.keymap.set('c', '<A-b>', '<S-Left>')

-- 保存退出
vim.keymap.set('t', '<C-w><C-q>', '<C-\\><C-n>:q<CR>')

-- git blame
vim.keymap.set('n', '<Leader>gb', '<cmd>GitBlameToggle<CR>', { desc = "toggle git blame"})

-- nvim-tree
vim.keymap.set('n', '<Leader>e', '<cmd>NvimTreeToggle<CR>', { desc = "toggle nvim-tree" })

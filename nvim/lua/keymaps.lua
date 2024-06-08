-- twilight
vim.api.nvim_set_keymap("n", "tw", ":Twilight<enter>", { noremap = false })
-- buffers
vim.api.nvim_set_keymap("n", "tk", ":blast<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "tj", ":bfirst<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "th", ":bprev<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "tl", ":bnext<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "td", ":bdelete<enter>", { noremap = false })
-- files
vim.api.nvim_set_keymap("n", "<C-q>", ":q!<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "<C-s>", ":w!<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "E", "$", { noremap = false })
vim.api.nvim_set_keymap("n", "B", "^", { noremap = false })
vim.api.nvim_set_keymap("n", "TT", ":TransparentToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "ss", ":noh<CR>", { noremap = true })
-- split
vim.keymap.set('n', '<C-w>', '<cmd>vsplit<cr>', { desc = 'Vertical split' })
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Noice
vim.api.nvim_set_keymap("n", "<leader>nn", ":Noice dismiss<CR>", { noremap = true })

-- Oil
vim.keymap.set("n", "<space><space>", "<CMD>Oil<CR>", { desc = "Open parent directory" })
-- Codeium
vim.keymap.set('i', '<C-e>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
vim.keymap.set('i', '<c-j>', function() return vim.fn['codeium#CycleCompletions'](1) end,
  { expr = true, silent = true })
vim.keymap.set('i', '<c-k>', function() return vim.fn['codeium#CycleCompletions'](-1) end,
  { expr = true, silent = true })
vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
-- Flash
vim.keymap.set("n", "s", function() require("flash").jump() end, { silent = true, noremap = true })
-- Misc
vim.keymap.set("n", "<leader>ee", "<cmd>GoIfErr<cr>", { silent = true, noremap = true })
vim.keymap.set('n', '<Esc>', "<cmd>set nohlsearch<CR>")
vim.keymap.set('n', '<leader>f', "<cmd>Format<CR>")

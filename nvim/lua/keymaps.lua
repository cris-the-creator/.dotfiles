-- twilight & zen
vim.api.nvim_set_keymap("n", "tw", ":Twilight<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "zm", ":ZenMode<enter>", { noremap = false })
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
vim.keymap.set("n", "<leader><leader>", "<CMD>Oil<CR>", { desc = "Open parent directory" })
-- Flash
vim.keymap.set("n", "s", function() require("flash").jump() end, { silent = true, noremap = true })
-- Obsidian
vim.keymap.set('n', '<leader>ow', '<cmd>:ObsidianWorkspace<CR>', {desc = 'Switch Obsidian Workspace'})
vim.keymap.set('n', '<leader>os', '<cmd>:ObsidianSearch<CR>', {desc = 'Switch Obsidian Workspace'})
vim.keymap.set('n', '<leader>on', '<cmd>:ObsidianNew<CR>', {desc = 'Switch Obsidian Workspace'})
-- TodoTxt
vim.keymap.set('n', '<leader>tt', '<cmd>:ToDoTxtTasksToggle<CR>', {desc = 'Toggle Todo List'})
vim.keymap.set('n', '<leader>tn', '<cmd>:ToDoTxtCapture<CR>', {desc = 'New Todo'})
-- TodoComments
vim.keymap.set('n', '<leader>td', '<cmd>:TodoLocList<CR>', {desc = 'Show Todo List'})
-- misc
vim.keymap.set("n", "<leader>ee", "<cmd>GoIfErr<cr>", { silent = true, noremap = true })
vim.keymap.set('n', '<Esc>', "<cmd>set nohlsearch<CR>")
vim.api.nvim_set_keymap('n', '<C-f>', "<cmd>Format<CR>", { noremap = false })
vim.api.nvim_set_keymap('n', '<C-b>', "<cmd>e#<CR>", { noremap = false })

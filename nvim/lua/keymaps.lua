-- Twilight & Zen
vim.api.nvim_set_keymap("n", "tw", ":Twilight<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "zm", ":ZenMode<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "tl", ":bnext<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "td", ":bdelete<enter>", { noremap = false })
-- Files
vim.api.nvim_set_keymap("n", "<C-q>", ":q!<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "<C-s>", ":w!<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "E", "$", { noremap = false })
vim.api.nvim_set_keymap("n", "B", "^", { noremap = false })
vim.api.nvim_set_keymap("n", "TT", ":TransparentToggle<CR>", { noremap = true })
-- Split (W)
vim.keymap.set('n', '<leader>wv', '<cmd>vsplit<cr>', { desc = 'Vertical split' })
vim.keymap.set('n', '<leader>wh', '<cmd>split<cr>', { desc = 'Vertical split' })
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window', noremap = true })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window', noremap = true })
-- Noice (NN)
vim.api.nvim_set_keymap("n", "<leader>nn", ":Noice dismiss<CR>", { noremap = true })
-- Oil
vim.keymap.set("n", "<leader><leader>", "<CMD>Oil<CR>", { desc = "Open parent directory" })
-- Flash (S)
vim.keymap.set("n", "s", function() require("flash").jump() end, { silent = true, noremap = true })
-- Obsidian (O)
vim.keymap.set('n', '<leader>oo', '<cmd>:ObsidianQuickSwitch<CR>', { desc = 'Switch to Note' })
vim.keymap.set('n', '<leader>os', '<cmd>:ObsidianSearch<CR>', { desc = 'Search Notes' })
vim.keymap.set('n', '<leader>on', '<cmd>:ObsidianNew<CR>', { desc = 'New Note' })
-- Tests (T)
vim.keymap.set('n', '<leader>tt', ':lua require("neotest").run.run()<CR>', { desc = 'Run unit tests' })
vim.keymap.set('n', '<leader>ta', ':lua require("neotest").run.run({suite=true})<CR>', { desc = 'Run unit tests' })
vim.keymap.set('n', '<leader>tc', ':lua require("neotest").run.stop()<CR>', { desc = 'Stop unit tests' })
vim.keymap.set('n', '<leader>to', ':lua require("neotest").output.open()<CR>', { desc = 'Open test output' })
vim.keymap.set('n', '<leader>ts', ':lua require("neotest").summary.toggle()<CR>', { desc = 'Toggle summary' })
-- DB (DD)
vim.keymap.set('n', '<leader>dd', ':DBUI<CR>', { desc = 'Toggle summary' })
-- Trouble (X)
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", { silent = true, noremap = true })
-- Sratch Files
vim.keymap.set("n", "<M-C-n>", "<cmd>Scratch<cr>")
vim.keymap.set("n", "<M-C-o>", "<cmd>ScratchOpen<cr>")
-- Misc
vim.keymap.set("n", "<leader>ee", "<cmd>GoIfErr<cr>", { silent = true, noremap = true })
vim.keymap.set('n', '<Esc>', "<cmd>set nohlsearch<CR>")
vim.api.nvim_set_keymap('n', '<C-f>', "<cmd>Format<CR>", { noremap = false })
vim.api.nvim_set_keymap('n', '<C-b>', "<cmd>e#<CR>", { noremap = false })

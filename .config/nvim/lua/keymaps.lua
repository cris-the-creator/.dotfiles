local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- File operations
map('n', '<C-s>', '<cmd>w<CR>', { desc = 'Save file' })
map('n', '<C-q>', '<cmd>confirm qa<CR>', { desc = 'Quit all with confirmation' })
map('n', '<C-b>', ':b#<CR>', { desc = 'Go to last file' })

-- Better navigation
map('n', 'E', '$', { desc = 'End of line' })
map('n', 'B', '^', { desc = 'Beginning of line' })

-- Window management
map('n', '<leader>wv', '<cmd>vsplit<CR>', { desc = 'Vertical split' })
map('n', '<leader>wh', '<cmd>split<CR>', { desc = 'Horizontal split' })
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Window left' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Window right' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Window down' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Window up' })

-- Clear search highlighting
map('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear search highlight' })

-- Diagnostic navigation (fix the conflict)
map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Previous diagnostic' })
map('n', ']d', vim.diagnostic.goto_next, { desc = 'Next diagnostic' })
map('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic' })
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Diagnostic list' })

-- Plugin keymaps
map('n', '<leader><leader>', '<cmd>Oil<CR>', { desc = 'File explorer' })

map('n', 'TT', '<cmd>TransparentToggle<CR>', { desc = 'Toggle transparency' })

map('n', 'gb', '<cmd>BlameToggle virtual<CR>', { desc = 'Toggle transparency' })

-- Formatting
map('n', '<leader>f', '<cmd>Format<CR>', { desc = 'Format buffer' })

-- Quick access
map('n', '<leader>dd', '<cmd>DBUI<CR>', { desc = 'Database UI' })

-- C/C++ header back & forth
map('n', '<leader>aa', '<cmd>FSHere<CR>', { desc = 'Alternate between .cpp and .h' })
map('n', '<leader>av', '<cmd>FSSplitRight<CR>', { desc = 'Split vertically and alternate' })

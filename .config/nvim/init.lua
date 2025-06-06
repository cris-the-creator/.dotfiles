vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('keymaps')
require('plugins.lazy')
require('plugins.misc')
require('plugins.lualine')
require('options')
require('misc')
require('plugins.dap')
--require('plugins.gitsigns')
require('plugins.tele')
require('plugins.treesitter')
require('plugins.lsp')
require('plugins.zenmode')
--require('plugins.neogit')
require('plugins.harpoon')
require('plugins.oil')

-- vim: ts=8 sts=2 sw=2 et

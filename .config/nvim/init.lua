vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

require 'options'
require 'keymaps'

require 'lazy-bootstrap'
require 'lazy-plugins'

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank { higroup = 'IncSearch', timeout = 200 }
  end,
})

vim.filetype.add {
  extension = {
    c3 = 'c3',
    c3i = 'c3i',
    c3t = 'c3t',
  },
}

-- vim: ts=8 sts=2 sw=2 et

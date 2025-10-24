return {
  -- Highlight on yank
  {
    'nvim-lua',
    config = function()
      vim.api.nvim_create_autocmd('TextYankPost', {
        desc = 'Highlight when yanking text',
        group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
        callback = function()
          vim.highlight.on_yank {
            higroup = 'IncSearch',
            timeout = 200,
          }
        end,
      })
    end,
  },
}

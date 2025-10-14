return {
  'nvim-pack/nvim-spectre',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    -- Search and replace
    {
      '<leader>SS',
      function()
        require('spectre').open()
      end,
      desc = '[S]earch and [R]eplace',
    },
    -- Search current word
    {
      '<leader>Sw',
      function()
        require('spectre').open_visual { select_word = true }
      end,
      desc = '[S]earch current [W]ord',
    },
    -- Search in current file
    {
      '<leader>Sf',
      function()
        require('spectre').open_file_search()
      end,
      desc = '[S]earch in current [F]ile',
    },
  },
  opts = {
    -- You can customize the UI here
    replace_engine = {
      ['sed'] = {
        cmd = 'sed',
      },
    },
  },
}

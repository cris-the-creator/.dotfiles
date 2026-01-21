return {
  -- {
  --   'datsfilipe/vesper.nvim',
  --   priority = 1000, -- load before all other plugins
  --   config = function()
  --     require('vesper').setup {
  --       transparent = true,
  --       italics = {
  --         comments = false,
  --         keywords = false,
  --         functions = false,
  --         strings = false,
  --         variables = false,
  --       },
  --     }
  --     vim.cmd.colorscheme 'vesper'
  --   end,
  -- },
  -- {
  --   'Mofiqul/dracula.nvim',
  --   config = function()
  --     vim.cmd.colorscheme 'dracula'
  --   end,
  -- },
  -- {
  --   'folke/tokyonight.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  --   config = function()
  --     vim.cmd.colorscheme 'tokyonight-night'
  --   end,
  -- },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000, -- load before all other plugins
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha',
        transparent_background = true,
        no_underline = true,
        styles = {
          comments = { 'italic' },
          functions = { 'bold' },
          conditionals = {},
          loops = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
          miscs = {},
        },
        color_overrides = {
          all = {
            -- mauve = "#f25544"
          },
        },
      }

      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}

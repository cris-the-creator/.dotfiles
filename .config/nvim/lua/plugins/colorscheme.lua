return {
  {
    'Mofiqul/dracula.nvim',
    config = function()
      vim.cmd.colorscheme 'dracula'
    end,
  },
  -- {
  --   'folke/tokyonight.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  --   config = function()
  --     vim.cmd.colorscheme 'tokyonight-night'
  --   end,
  -- },
  -- 'catppuccin/nvim',
  -- name = 'catppuccin',
  -- priority = 1000, -- Load before all other plugins
  -- config = function()
  --   require('catppuccin').setup {
  --     flavour = 'mocha',
  --     transparent_background = true,
  --     no_underline = true,
  --     styles = {
  --       functions = { 'bold' },
  --     },
  --     color_overrides = {
  --       all = {
  --         -- mauve = "#f25544"
  --       },
  --     },
  --   }
  --
  --   vim.cmd.colorscheme 'catppuccin'
  -- end,
}

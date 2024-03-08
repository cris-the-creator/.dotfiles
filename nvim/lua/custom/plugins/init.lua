return {
  {
    'rktjmp/lush.nvim',
    lazy = false,
    priority = 1000,
  },
  {
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
    'mcchrish/zenbones.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    dependencies = { 'rktjmp/lush.nvim' },
    config = function()
      -- vim.cmd.colorscheme 'zenbobnes'

      -- vim.cmd.hi 'Comment gui=none'
    end,
  },
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'nordic'

      -- vim.cmd.hi 'Comment gui=none'
    end,
  },
}

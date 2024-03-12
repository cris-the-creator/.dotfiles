return {
  {
    'rktjmp/lush.nvim',
    lazy = false,
    priority = 1000,
  },
  {
    'mcchrish/zenbones.nvim',
    lazy = false,
    priority = 1000,
    dependencies = { 'rktjmp/lush.nvim' },
    config = function()
      -- vim.cmd.colorscheme 'zenbobnes'
      -- vim.cmd.hi 'Comment gui=none'
    end,
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
}

return {
  {
    'mcchrish/zenbones.nvim',
    lazy = false,
    priority = 1000,
    requires = 'rktjmp/lush.nvim',
    config = function()
      vim.cmd.colorscheme 'zenbones'
    end,
  },
}

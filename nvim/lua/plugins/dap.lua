require('dapui').setup()
require('dap-go').setup()
require('nvim-dap-virtual-text').setup()
vim.fn.sign_define(
  'DapBreakpoint', { text = '🔴', texthl = 'DapBreakpoint', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' }
)

-- Debugger
vim.api.nvim_set_keymap("n", "<leader>dt", ":DapUiToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>db", ":DapToggleBreakpoint<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>dc", ":DapContinue<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>dr", ":lua require('dapui').open({reset = true})<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ht", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { noremap = true })

local dap = require('dap')

-- Php
dap.adapters.php = {
  type = 'executable',
  command = 'node',
  args = {'/opt/vscode-php-debug/out/phpDebug.js'}
}

dap.configurations.php = {
  {
    type = 'php',
    requrest = 'launch',
    name = 'Listen for xdebug',
    port = '9003',
    log = false,
    --localSourceRoot = '/home/cris/dev/',
    --serverSourceRoot = '/public/'
  }
}

require('dapui').setup()
require('dap-go').setup()
require('nvim-dap-virtual-text').setup()

local dap, dapui = require("dap"), require("dapui")
dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end

-- Debugger
vim.fn.sign_define(
  'DapBreakpoint', { text = '🔴', texthl = 'DapBreakpoint', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' }
)
vim.api.nvim_set_keymap("n", "<leader>dt", ":DapUiToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>db", ":DapToggleBreakpoint<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>dc", ":DapContinue<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>dr", ":lua require('dapui').open({reset = true})<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ht", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { noremap = true })

-- Php
dap.configurations.php = {
    {
      type    = 'php',
      request = 'launch',
      name    = 'Listen for Xdebug',
      port    = 9003,
      log = true,
      -- pathMappings = {
      --   ['/var/www/html/'] = vim.fn.getcwd() .. '/',
      --   ['/var/www/html/'] = "${workspaceFolder}",
      -- }
    },
}
dap.adapters.php = {
  type = 'executable',
  command = 'node',
  args = { '/home/cris/vscode-php-debug/out/phpDebug.js' }
}

-- Go
dap.adapters.go = function(callback, config)
  vim.defer_fn(function()
      callback({ type = 'server', host = '127.0.0.1', port = '90' })
    end,
    100)
end

dap.configurations.go = {
  {
    type = 'go',
    name = "Debug",
    request = "launch",
    program = "${file}",
  }
}

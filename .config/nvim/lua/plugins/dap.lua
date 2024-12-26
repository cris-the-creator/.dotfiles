require('dap-go').setup()
require('nvim-dap-virtual-text').setup()

local dap, dapui = require("dap"), require("dapui")
dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dapui.setup()

-- Debugger
vim.fn.sign_define(
  'DapBreakpoint', { text = '🔴', texthl = 'DapBreakpoint', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' }
)
vim.api.nvim_set_keymap("n", "<leader>dt", ":DapUiToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>db", ":DapToggleBreakpoint<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>dc", ":DapContinue<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>dr", ":lua require('dapui').open({reset = true})<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ht", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { noremap = true })

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
  },
}

-- Php
dap.adapters.php = {
  type = 'executable',
  command = 'node',
  args = { os.getenv('HOME') .. '/.local/vscode-php-debug/out/phpDebug.js' },
}

dap.configurations.php = {
  {
    type = 'php',
    request = 'launch',
    name = 'Local Xdebug',
    port = 9003,
    log = false,
  },
  {
    type = 'php',
    request = 'launch',
    name = 'Docker Xdebug',
    hostname = '0.0.0.0',
    port = 9003,
    log = false,
    pathMappings = {
      --['/var/www/html'] = vim.fn.expand("%:p:h") .. "/"
      ['/var/www/html'] = "${workspaceFolder}"
    --   --['/var/www/html'] = vim.fn.getcwd() .. '/',
    }
    --serverSourceRoot = '/var/www/html/',
    --localSourceRoot = vim.fn.expand("%:p:h") .. "/",
  }
}

-- you'll want this because we don't want xdebug to start automatically everytime
function insert_xdebug()
  local pos = vim.api.nvim_win_get_cursor(0)[2]
  local line = vim.api.nvim_get_current_line()
  local nline = line:sub(0, pos) .. 'xdebug_break();' .. line:sub(pos + 1)
  vim.api.nvim_set_current_line(nline)
end

vim.api.nvim_set_keymap("n", "<leader>dx", "<cmd>lua insert_xdebug()<cr>", { noremap = true })

-- This contains mainly Neogit but also a bunch of Git settings
-- like fetching branches with telescope or blaming with fugitive
local neogit = require('neogit')

vim.keymap.set("n", "<leader>gg", neogit.open,
  {silent = true, noremap = true}
)

vim.keymap.set("n", "<leader>gc", ":Neogit commit<CR>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "<leader>gp", ":Neogit pull<CR>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "<leader>gP", ":Neogit push<CR>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "<leader>gb", ":Telescope git_branches<CR>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "<leader>gB", ":G blame<CR>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "<leader>gG", function()
  local file_dir = vim.fn.expand("%:h")
  local exec_result = vim.system({ "git", "rev-parse", "--show-toplevel" }, { text = true, cwd = file_dir })
      :wait()
  local root = vim.fn.trim(exec_result.stdout)
  neogit.open({ kind = "replace", cwd = root })
end, { desc = "Neogit status", silent = true })

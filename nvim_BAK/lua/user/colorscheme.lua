
-- local M = {
--   "LunarVim/darkplus.nvim",
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
-- }

local M = {
  "mcchrish/zenbones.nvim",
  lazy = false,
  priority = 1000,
}
function M.config()
  vim.cmd.colorscheme "zenbones"
end

return M

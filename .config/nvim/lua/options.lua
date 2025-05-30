-- Set colorscheme
-- vim.cmd.colorscheme "kanagawa-dragon"
-- vim.cmd.colorscheme "catppuccin-mocha"
vim.cmd.colorscheme "tokyonight-storm"
-- vim.cmd.colorscheme "zenbones"
-- vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"

-- Set highlight on search
vim.o.hlsearch = true

-- Make line numbers default
vim.wo.number = true
vim.o.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Disable mouse mode
vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Performance improvements
vim.o.updatetime = 1000  -- Less frequent updates
vim.o.timeoutlen = 500   -- Faster which-key popup
vim.o.ttimeoutlen = 10   -- Faster key sequence completion

-- Better editing experience
vim.o.scrolloff = 8      -- Keep 8 lines visible when scrolling
vim.o.sidescrolloff = 8  -- Keep 8 columns visible when scrolling
vim.o.signcolumn = 'yes:1'  -- Always show signcolumn, fixed width

-- Modern search
vim.o.inccommand = 'nosplit'  -- Live preview for :s command

-- Better splits
vim.o.splitright = true
vim.o.splitbelow = true

-- Improved completion
vim.o.pumheight = 15     -- Limit completion menu height
vim.o.pumblend = 10      -- Transparent completion menu

vim.o.confirm = true
vim.o.wrap = false
vim.wo.signcolumn = 'yes'

--vim.cmd()
vim.opt.clipboard = 'unnamedplus'

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Concealer for Neorg
vim.o.conceallevel = 2

-- Lua line bottom margin
vim.opt.cmdheight = 0

-- Bottom padding
vim.opt.scrolloff = 15

vim.filetype.add({
  pattern = {
    [".*%.blade%.php"] = "blade",
  }
})

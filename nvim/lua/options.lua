-- Set colorscheme
vim.cmd.colorscheme "darkvoid"

vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"

-- Set highlight on search
vim.o.hlsearch = true

-- Make line numbers default
vim.wo.number = true
vim.o.relativenumber = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- Disable mouse mode
vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

--vim.cmd()
vim.opt.clipboard = 'unnamedplus'

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Concealer for Neorg
vim.o.conceallevel = 2

-- Lua line bottom margin
vim.opt.cmdheight = 0

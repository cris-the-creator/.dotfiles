-- Install lazylazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Fixes Notify opacity issues
vim.o.termguicolors = true

require('lazy').setup({
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  'onsails/lspkind.nvim',
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  'folke/zen-mode.nvim',
  'f-person/git-blame.nvim',
  -- Database
  'kristijanhusak/vim-dadbod-ui',
  'kristijanhusak/vim-dadbod-completion',
  {
    "tpope/vim-dadbod",
    opt = true,
    requires = {
      "kristijanhusak/vim-dadbod-ui",
      "kristijanhusak/vim-dadbod-completion",
    },
    config = function()
      require("config.dadbod").setup()
    end,
  },
  'ThePrimeagen/git-worktree.nvim',
  'xiyaowong/nvim-transparent',
  {
    'rmagatti/goto-preview',
    config = function()
      require('goto-preview').setup {
        width = 120, -- Width of the floating window
        height = 15, -- Height of the floating window
        border = { "↖", "─", "┐", "│", "┘", "─", "└", "│" }, -- Border characters of the floating window
        default_mappings = true,
        debug = false, -- Print debug information
        opacity = nil, -- 0-100 opacity level of the floating window where 100 is fully transparent.
        resizing_mappings = false, -- Binds arrow keys to resizing the floating window.
        post_open_hook = nil, -- A function taking two arguments, a buffer and a window to be ran as a hook.
        references = { -- Configure the telescope UI for slowing the references cycling window.
          telescope = require("telescope.themes").get_dropdown({ hide_preview = false })
        },
        -- These two configs can also be passed down to the goto-preview definition and implementation calls for one off "peak" functionality.
        focus_on_open = true,                                        -- Focus the floating window when opening it.
        dismiss_on_move = false,                                     -- Dismiss the floating window when moving the cursor.
        force_close = true,                                          -- passed into vim.api.nvim_win_close's second argument. See :h nvim_win_close
        bufhidden = "wipe",                                          -- the bufhidden option to set on the floating window. See :h bufhidden
        stack_floating_preview_windows = true,                       -- Whether to nest floating windows
        preview_window_title = { enable = true, position = "left" }, -- Whether
      }
    end
  },
  {
    "folke/trouble.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end
  },
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    lazy = false,
    config = function()
      require("todo-comments").setup {}
    end
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
      { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
      { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-S>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
    },
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {},
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },
  {
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup({
        background_colour = "#000000",
        enabled = false,
      })
    end
  },
  -- COLORSCHEMES
  { "rktjmp/lush.nvim" },
  {
    "zenbones-theme/zenbones.nvim",
    dependencies = "rktjmp/lush.nvim",
    lazy = true,
    priority = 100,
    config = function()
      -- vim.g.zenbones_darken_comments = 45
      vim.g.zenbones_transparent_background = true
    end
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require("tokyonight").setup({
        transparent = true,
      })
    end
  },
  {
    'aliqyan-21/darkvoid.nvim',
    config = function()
      require('darkvoid').setup({
        transparent = true,
        glow = true,
        show_end_of_buffer = false,
        colors = {
          kw = "#D9FFDA",
          string = "#CCE5E5"
        }
      })
    end
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require('rose-pine').setup({
        styles = {
          bold = true,
          italic = true,
          transparency = true,
        }
      })
    end
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato",
        transparent_background = true,
        no_underline = true,
        styles = {
          functions = { "bold" },
        },
        color_overrides = {
          all = {
            -- mauve = "#f25544"
          }
        }
      })
    end
  },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require('kanagawa').setup({
        transparent = true,
        functionStyle = { bold = true },
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none"
              }
            }
          }
        }
      })
    end
  },
  'ray-x/go.nvim',
  'ray-x/guihua.lua',
  { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      'j-hui/fidget.nvim',
    }
  },
  { -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
    config = function()
      local cmp = require("cmp")
      cmp.setup {
        sources = cmp.config.sources({
          { name = 'cody' },
          { name = 'nvim_lsp' },
        })
      }
    end
  },
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    }
  },
  'nvim-lua/plenary.nvim',
  {
    "mfussenegger/nvim-dap"
  },
  {
    'theHamsta/nvim-dap-virtual-text',
    dependencies = {
      "mfussenegger/nvim-dap"
    }
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap"
    }
  },
  { "nvim-neotest/nvim-nio" },
  { 'leoluz/nvim-dap-go' },
  -- Git related plugins
  'tpope/vim-fugitive',
  -- 'lewis6991/gitsigns.nvim',
  { 'nvim-lualine/lualine.nvim' },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  'numToStr/Comment.nvim', -- "gc" to comment visual regions/lines
  'tpope/vim-sleuth',      -- Detect tabstop and shiftwidth automatically
  -- Fuzzy Finder (files, lsp, etc)
  { 'nvim-telescope/telescope.nvim',            branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
  'nvim-telescope/telescope-symbols.nvim',
  -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make',   cond = vim.fn.executable 'make' == 1 },
  {
    "folke/twilight.nvim",
    opts = {
      -- your configuration comes here
    }
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "olexsmir/gopher.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "olimorris/neotest-phpunit"
    },
    config = function()
      require('neotest').setup({
        adapters = {
          require('neotest-phpunit')({
            phpunit_cmd = function()
              return "./vendor/bin/phpunit"
            end
          })
        },
        diagnostic = {
          enabled = true
        }
      })
    end
  },
  {
    "DreamMaoMao/yazi.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>yy", "<cmd>Yazi<CR>", desc = "Toggle Yazi" },
    },
  },
  {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
      'nvimtools/hydra.nvim',
    },
    opts = {},
    cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
    keys = {
      {
        mode = { 'v', 'n' },
        '<Leader>mm',
        '<cmd>MCstart<cr>',
        desc = 'Create a selection for selected text or word under the cursor',
      },
    },
  },
  {
    "lukas-reineke/virt-column.nvim",
    opts = {},
    config = function()
      require("virt-column").setup({
        char = ".",
        virtcolumn = "+1,100"
      })
    end
  },
  {
    "LintaoAmons/scratch.nvim",
    event = "VeryLazy",
  },
  { 'sindrets/diffview.nvim' },
  { 'Janiczek/vim-latte' },
  {
    "hedyhli/outline.nvim",
    lazy = true,
    cmd = { "Outline", "OutlineOpen" },
    keys = { -- Example mapping to toggle outline
      { "<leader>o", "<cmd>Outline<CR>", desc = "Toggle outline" },
    },
    opts = {
      outline_window = {
        position = 'left',
        width = 15
      },
      preview_window = {
        auto_preview = true,
      }
    },
  },
  {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig",
    config = function()
      require('nvim-navic').setup()
    end
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup({})
    end
  },
  { "kkoomen/vim-doge" },
  {
    'stevearc/conform.nvim',
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          lua = { "stylua" },
          blade = { "blade-formatter" }
        },
        format_on_save = {
          timeout_ms = 500,
          lsp_fallback = true,
        }
      })
    end
  },
  {
    'Aasim-A/scrollEOF.nvim',
    event = { 'CursorMoved', 'WinScrolled' },
    opts = {},
  },
  {
    "andythigpen/nvim-coverage",
    version = "*",
    config = function()
      require("coverage").setup({
        auto_reload = true,
      })
    end,
  },
  {
    "greggh/claude-code.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("claude-code").setup()
    end
  },
  {
    "S1M0N38/love2d.nvim",
    cmd = "LoveRun",
    opts = {},
    keys = {
      { "<leader>v",  ft = "lua",          desc = "LÖVE" },
      { "<leader>vv", "<cmd>LoveRun<cr>",  ft = "lua",   desc = "Run LÖVE" },
      { "<leader>vs", "<cmd>LoveStop<cr>", ft = "lua",   desc = "Stop LÖVE" },
    },
  },
  {
    "folke/neodev.nvim",
    opts = {
      library = {
        plugins = { "love2d.nvim" },
        types = true,
      },
    },
  },
  {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    dependencies = { 'williamboman/mason.nvim' },
    config = function()
      require('mason-tool-installer').setup({
        ensure_installed = {
          'stylua',   -- Lua formatter
          'luacheck', 
        },
      })
    end,
  },
  {
  "folke/persistence.nvim",
  event = "BufReadPre",
  opts = {},
}, -- Better session management

{
  "echasnovski/mini.pairs",
  event = "VeryLazy",
  opts = {},
}, -- Lighter alternative to nvim-autopairs

{
  "kevinhwang91/nvim-ufo",
  dependencies = "kevinhwang91/promise-async",
  config = function()
    vim.o.foldcolumn = '1'
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true
    require('ufo').setup()
  end,
}, -- Better folding
})

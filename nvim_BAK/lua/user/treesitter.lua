local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
}

function M.config()
  require("nvim-treesitter.configs").setup {
    ensure_installed = { 
      "lua", "markdown", "markdown_inline", "bash", "dockerfile", "html", "http", "json", "sql",
      "python", "elixir", "eex", "c", "erlang", "glsl", "javascript", "jsdoc", "kotlin", "go", "typescript"
    },
    highlight = { enable = true },
    indent = { enable = true },
  }
end

return M

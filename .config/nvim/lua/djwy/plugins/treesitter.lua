return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    require("nvim-treesitter").setup()

    local ensure_installed = {
      "bash",
      "comment",
      "css",
      "csv",
      "diff",
      "dockerfile",
      "gitignore",
      "graphql",
      "html",
      "javascript",
      "json",
      "liquid",
      "lua",
      "markdown",
      "markdown_inline",
      "regex",
      "ruby",
      "scss",
      "sql",
      "svelte",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "yaml",
    }
    local installed = require("nvim-treesitter.config").get_installed()
    local to_install = vim.tbl_filter(function(lang)
      return not vim.list_contains(installed, lang)
    end, ensure_installed)
    if #to_install > 0 then
      require("nvim-treesitter.install").install(to_install)
    end
  end,
}

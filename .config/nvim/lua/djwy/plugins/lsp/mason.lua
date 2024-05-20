return {
  "williamboman/mason.nvim",
  dependencies = {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "cssls",
        "cssmodules_ls",
        "cucumber_language_server",
        "graphql",
        "html",
        "lua_ls",
        "rubocop",
        "ruby_lsp",
        "sqlls",
        "tailwindcss",
        "tsserver",
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "eslint_d", -- js linter
        "prettier", -- prettier formatter
        "rubocop", -- ruby formatter
        "stylua", -- lua formatter
      },
    })
  end,
}

return {
  "mason-org/mason.nvim",
  -- { "mason-org/mason.nvim", version = "1.11.0" },
  dependencies = {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    "mason-org/mason-lspconfig.nvim",
    -- { "mason-org/mason-lspconfig.nvim", version = "1.32.0" },
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
      -- auto-install servers that are set up in lspconfig
      automatic_installation = true,
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
        "svelte",
        "tailwindcss",
        "ts_ls",
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        { "eslint_d", version = "13.1.2" }, -- js linter
        "prettier", -- prettier formatter
        "rubocop", -- ruby formatter
        "stylua", -- lua formatter
      },
    })
  end,
}

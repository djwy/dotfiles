return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    local function has_biome_config(bufnr)
      local path = vim.api.nvim_buf_get_name(bufnr)
      local dir = path ~= "" and vim.fs.dirname(path) or vim.fn.getcwd()
      return vim.fs.find({ "biome.json", "biome.jsonc" }, { upward = true, path = dir })[1] ~= nil
    end

    local function biome_or(fallback)
      return function(bufnr)
        if has_biome_config(bufnr) then
          return { "biome" }
        end
        return fallback
      end
    end

    conform.setup({
      formatters_by_ft = {
        go = { "goimports" },
        css = biome_or({ "prettier" }),
        graphql = biome_or({ "prettier" }),
        html = { "prettier" },
        javascript = biome_or({ "prettier" }),
        javascriptreact = biome_or({ "prettier" }),
        json = biome_or({ "prettier" }),
        liquid = { "prettier" },
        lua = { "stylua" },
        -- markdown = { "prettier" },
        -- python = { "isort", "black" },
        ruby = { "rubocop" },
        scss = { "prettier" },
        svelte = biome_or({ "prettier" }),
        typescript = biome_or({ "prettier" }),
        typescriptreact = biome_or({ "prettier" }),
        yaml = { "prettier" },
      },
      formatters = {
        rubocop = {
          command = vim.fn.expand("~/.local/share/mise/shims/rubocop"),
        },
      },
      format_on_save = function(bufnr)
        if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
          return
        end
        return { lsp_format = "fallback", async = false, timeout_ms = 5000 }
      end,
    })

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_format = "fallback",
        async = false,
        timeout_ms = 2500,
      })
    end, { desc = "Format file or range (in visual mode)" })

    vim.api.nvim_create_user_command("FormatDisable", function(args)
      if args.bang then
        -- FormatDisable! will disable formatting just for this buffer
        vim.b.disable_autoformat = true
      else
        vim.g.disable_autoformat = true
      end
    end, {
      desc = "Disable autoformat-on-save",
      bang = true,
    })

    vim.api.nvim_create_user_command("FormatEnable", function()
      vim.b.disable_autoformat = false
      vim.g.disable_autoformat = false
    end, {
      desc = "Re-enable autoformat-on-save",
    })
  end,
}

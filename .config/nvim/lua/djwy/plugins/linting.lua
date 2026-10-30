return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    lint.linters.rubocop.cmd = vim.fn.expand("~/.local/share/mise/shims/rubocop")

    local js_like = { "eslint_d", "biomejs" }

    lint.linters_by_ft = {
      css = { "stylelint" },
      javascript = js_like,
      javascriptreact = js_like,
      ruby = { "rubocop" },
      scss = { "stylelint" },
      svelte = js_like,
      typescript = js_like,
      typescriptreact = js_like,
    }

    local function has_biome_config(bufnr)
      local path = vim.api.nvim_buf_get_name(bufnr)
      local dir = path ~= "" and vim.fs.dirname(path) or vim.fn.getcwd()
      return vim.fs.find({ "biome.json", "biome.jsonc" }, { upward = true, path = dir })[1] ~= nil
    end

    local function try_lint()
      local bufnr = vim.api.nvim_get_current_buf()
      local ft = vim.bo[bufnr].filetype
      local linters = lint.linters_by_ft[ft]
      if linters == js_like then
        lint.try_lint(has_biome_config(bufnr) and "biomejs" or "eslint_d")
      else
        lint.try_lint()
      end
    end

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = try_lint,
    })

    vim.keymap.set("n", "<leader>l", try_lint, { desc = "Trigger linting for current file" })
  end,
}

return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons", "junegunn/fzf", build = "./install --bin" },
  config = function()
    local fzf = require("fzf-lua")
    -- calling `setup` is optional for customization
    fzf.setup({
      grep = {
        rg_opts = [[--hidden --follow --line-number --column -g "!.git"]],
      },
      previewers = {
        builtin = {
          treesitter = {
            enable = false,
          },
        },
      },
    })

    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<C-p>", "<cmd>lua require('fzf-lua').files()<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<C-t>", "<cmd>lua require('fzf-lua').buffers()<cr>", { desc = "Fuzzy find buffers in cwd" })
    keymap.set("n", "<C-f>", "<cmd>lua require('fzf-lua').live_grep()<cr>", { desc = "Find string in cwd" })
  end,
}

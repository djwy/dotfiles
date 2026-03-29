return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons", "junegunn/fzf", build = "./install --bin" },
  cmd = "FzfLua",
  keys = {
    { "<C-p>", "<cmd>FzfLua files<cr>", desc = "Fuzzy find files in cwd" },
    { "<C-t>", "<cmd>FzfLua buffers<cr>", desc = "Fuzzy find buffers in cwd" },
    { "<C-f>", "<cmd>FzfLua live_grep<cr>", desc = "Find string in cwd" },
  },
  opts = {
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
  },
}

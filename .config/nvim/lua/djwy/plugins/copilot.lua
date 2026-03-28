return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = { enabled = false },
      panel = { enabled = false },
      copilot_node_command = vim.fn.trim(vim.fn.system("mise where node@22")) .. "/bin/node",
    })
  end,
}

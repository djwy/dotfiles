return {
  "zbirenbaum/copilot-cmp",
  lazy = true, -- loaded via nvim-cmp's dependencies, not on its own
  dependencies = { "zbirenbaum/copilot.lua" },
  config = function()
    require("copilot_cmp").setup()
  end,
}

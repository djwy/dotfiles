return {
  "brenoprata10/nvim-highlight-colors",
  config = function()
    local nvim_highlight_colors = require("nvim-highlight-colors")

    vim.opt.termguicolors = true

    nvim_highlight_colors.setup({
      render = "virtual",
      enable_tailwind = true,
    })
  end,
}

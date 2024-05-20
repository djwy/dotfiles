vim.g.mapleader = " "

local keymap = vim.keymap

-- get relative path of buffer
keymap.set(
  "n",
  "<Leader>cf",
  ":let @* = fnamemodify(expand('%'), ':~:.')<CR>",
  { noremap = true, desc = "Copy relative path of buffer" }
)

-- get full path of buffer
keymap.set("n", "<Leader>cff", ":let @* = expand('%:p')<CR>", { noremap = true, desc = "Copy full path of buffer" })

-- get full directory of buffer
keymap.set(
  "n",
  "<Leader>cd",
  ":let @* = expand('%:p:h')<CR>",
  { noremap = true, desc = "Copy full directory of buffer" }
)

-- toggle relative line numbers
local function numberToggle()
  if vim.o.relativenumber == true then
    vim.opt.relativenumber = false
    vim.opt.number = true
  else
    vim.opt.relativenumber = true
    vim.opt.number = true
  end
end

keymap.set("n", "<C-n>", numberToggle, { noremap = true, desc = "Toggle relative line numbers" })

-- clear highlights
keymap.set("n", "<Leader>h", ":noh<CR>", { noremap = true, silent = true, desc = "Clear highlights" })

-- navigate between splits
keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, desc = "Move one split left" })
keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, desc = "Move one split down" })
keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, desc = "Move one split up" })
keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, desc = "Move one split right" })

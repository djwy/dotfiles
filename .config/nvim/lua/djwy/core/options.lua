vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)
-- opt.numberwidth = 5

-- tabs & indentation
opt.tabstop = 2 -- spaces for tabs (prettier default)
opt.shiftwidth = 2 -- spaces for indent width
opt.softtabstop = 2 -- columns to indent when pressing Tab in insert mode
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- whitespace
opt.list = true
opt.listchars = "eol:¬"

-- line wrapping
opt.textwidth = 80
opt.wrap = true -- enable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn"t shift
opt.guifont = "Fura Code"

-- bottom status
opt.laststatus = 2
opt.ruler = true
opt.showcmd = true
opt.wildmenu = true

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
-- opt.swapfile = false

-- turn on undofile
opt.undofile = true
opt.undodir = vim.fn.stdpath("config") .. "/undo"

syntax on
filetype plugin indent on


" === plugins ===

source ~/.config/nvim/plug.vim


" === NERDTree ===

let NERDTreeShowHidden=1


" === theme ===

set background=dark
set termguicolors
colorscheme snazzy

hi CursorLine guibg=#394066


" === fzf ===

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['bg', 'IncSearch'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'NonText'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }


" === lightline ===

let g:lightline = { 'colorscheme': 'snazzy' }


" === ale ===

let g:ale_fixers = { 'ruby': ['rubocop'] }
let g:ale_sign_error = '!!'
let g:ale_sign_warning = '__'


" === mappings ===

" remap <Leader> key from the default `\`
let mapleader = "\<Space>"

nnoremap <C-p> :FZF<CR>
nnoremap <C-f> :Rg<Space>

" use ripgrep
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --hidden --line-number --no-heading --ignore-case --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" paste using automatic indentation
map <Leader>p :set paste<CR><esc>"*]p:set nopaste<cr>

" get relative path of buffer
map <Leader>cf :let @* = expand("%")<CR>

" get full path of buffer
map <Leader>cff :let @* = expand("%:p")<CR>

" get full directory of buffer
map <Leader>cd :let @* = expand("%:p:h")<CR>

" find file in NERDTree
map <Leader>ff :NERDTreeFind<CR>

" remove highlight
map <Leader>h :noh<CR>


" === line numbers ===

" ctrl+n to toggle between relative and absolute numbers
" (relative by default)
set number
set relativenumber
set numberwidth=5

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

set cursorline


" === splits ===

" open new splits to right and below
set splitright
set splitbelow

" to move between splits, use ctrl+<direction>
" instead of the default ctrl+w and then <direction>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" or use <tab> to cycle through splits
nnoremap <tab> <C-w>w


" === tabs & spaces ===

" how many columns to indent
set tabstop=2

" how many columns to indent/unindent with `<<` and `>>`
set shiftwidth=2

" how many columns to indent when pressing Tab in insert mode
set softtabstop=2

" pressing Tab produces space characters
set expandtab

" new lines use same indentation as previous line
set autoindent

" show whitespaces
set list
set listchars+=eol:¬

let g:indent_guides_enable_on_vim_startup = 1



" === line width / word wrap ===
" text width
set textwidth=80

" soft wrap
set wrap

" only break lines at characters listed in `breakat`
" don't break mid-word
" set linebreak

" `list` must be disabled for `linebreak` to work
" set nolist

" show a colored column at 85 characters
" set colorcolumn=85


" === bottom of window command / status stuff ===

" always show statusline
set laststatus=2

" show command you are currently typing in bottom line
set showcmd

" show mode (insert, visual, etc) in bottom line
" disabled because `laststatus=2` means mode is always shown?
" set showmode

" show line and column info in statusline
" disabled because `laststatus=2` means ruler is always shown?
set ruler

" enable a menu at the bottom of the window for command completion
set wildmenu


" === misc ===

" make backspace work 'normally': deletes indents, line breaks,
" and past the start of the current insert
set backspace=indent,eol,start

" persistent undo: save undo history after file is closed
set undofile

" directory in which to save undo history
set undodir=$HOME/.vim/undo

" use system clipboard
set clipboard=unnamed


" === key bindings ===

" reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv
vnoremap = =gv


autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

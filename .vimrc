set nocompatible
set wak=no

" MANAGING INDENTATION
filetype indent on
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set shiftround
set autoindent
set fileformats=unix,dos
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
scriptencoding utf-8
set encoding=utf-8
" enable list mode
set list
" display chars for tabs and trailing spaces
set listchars=tab:<->,trail:-,nbsp:·

set number
set cursorline
filetype plugin on
set laststatus=2
set statusline=%F%m%r%h%w%=(%{&ff}/%Y\ (line\ %l\/%L,\ col\ %c)\ 
set nobackup
set wildmenu
set encoding=utf-8
inoremap jk <ESC>
let mapleader=","
set noswapfile
set hlsearch
set ignorecase
set smartcase
set incsearch
noremap <Up> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Down> <Nop>

" ITALIAN ACCENTED CHARS
inoremap <M-a> <C-k>a`
inoremap <M-'> <C-k>a`
inoremap <M-e> <C-k>e`
inoremap <M-[> <C-k>e`
inoremap <M-i> <C-k>i`
inoremap <M-=> <C-k>i`
inoremap <M-o> <C-k>o`
inoremap <M-;> <C-k>o`
inoremap <M-u> <C-k>u`
inoremap <M-\> <C-k>u`
inoremap <M-E> <C-k>e'
inoremap <M-{> <C-k>e'
inoremap <M-O> <C-k>o'
inoremap <M-:> <C-k>o'

" set clipboard+=unnamedplus TODO - NOT WORKING AS EXPECTED
set backspace=indent,eol,start

" COLORS
colorscheme torte
syntax enable
let &colorcolumn=join(range(81,999), ",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let g:js_context_colors=1
let g:js_context_colors_enabled=1

" FINDING FILES
set path+=**
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
set wildignore+=*.o,*.obj,*.map,*/node_modules/*

" FILE BROWSING
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_preview=1
let g:netrw_altv=1
let g:netrw_winsize=80
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'


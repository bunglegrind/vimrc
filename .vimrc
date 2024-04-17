set nocompatible
set wak=no
" PLUGINS
"
" fugitive
" surround
" commentary
" matchit
" unimpaired
" repeat
" vim-vinegar

packadd! matchit

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

set showmode
set number
set cursorline
filetype plugin on
set laststatus=2
set statusline=%F%m%r%h%w%=(%{&ff}/%Y\ (line\ %l\/%L,\ col\ %c)\ 
set nobackup
set wildmenu
set encoding=utf-8
inoremap jk <ESC>
set scrolloff=5
set noswapfile
set hlsearch
set hidden
set ignorecase
set smartcase
set incsearch
set gdefault
noremap <Up> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Down> <Nop>

let mapleader = " "

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

" USEFUL MAPPINGS
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
noremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>/ :noh<cr>

:source ~/vimfiles/jslint_wrapper_vim.vim

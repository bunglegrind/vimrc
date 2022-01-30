set nocompatible

" MANAGING INDENTATION
set softtabstop=4
set shiftwidth=4
set tabstop=4
set shiftround
set autoindent
filetype indent on
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2

set number
set cursorline
filetype plugin on
set laststatus=2
set statusline=%F%m%r%h%w%=(%{&ff}/%Y\ (line\ %l\/%L,\ col\ %c)\ 
set nobackup
set wildmenu
inoremap jk <ESC>
let mapleader=","
set noswapfile
set hlsearch
set ignorecase
set incsearch
noremap <Up> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Down> <Nop>
" set clipboard+=unnamedplus TODO - NOT WORKING AS EXPECTED
set backspace=indent,eol,start

" COLORS
colorscheme torte
syntax enable
set colorcolumn=81
highlight ColorColumn ctermbg=darkgrey guibg=darkgrey ctermfg=red guifg=red

" FINDING FILES
set path+=**
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" FILE BROWSING
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_preview=1
let g:netrw_altv=1
let g:netrw_winsize=80
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'


let mapleader=" "
syntax on
map S :w<CR>
map Q :q<CR>
set number
set shiftwidth=4
set tabstop=8
set softtabstop=-1
set norelativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set encoding=utf-8
let &t_ut=''
set expandtab
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldlevel=99
set foldmethod=indent
 let &t_SI = "\<Esc>]50;CursorShape=1\x7"
 let &t_SR = "\<Esc>]50;CursorShape=2\x7"
 let &t_EI = "\<Esc>]50;CursorShape=0\x7"
 set laststatus=2
 set autochdir
 au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") |     exe "normal! g'\"" | endif



call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

" Markdown preview "
Plug 'vimwiki/vimwiki'


call plug#end()

color snazzy

  

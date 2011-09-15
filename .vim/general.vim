
" !!! NOT COMMENTED NO EXPLANTION !!!
set ruler
filetype off
filetype plugin indent on

set laststatus=2
set statusline=
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}, " filetype
set statusline+=%{&encoding},                " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset
" !!! NOT COMMENTED NO EXPLANTION !!!


" required for several plugins
set nocompatible

" enable syntax highlighting
syntax on

" Set encoding
set encoding=utf-8

" have the mouse enabled all the time
set mouse=a

" to share the clipboad with the operating system
set clipboard=unnamed

" enable line numbers, and don't make them any wider than necessary
set number numberwidth=2

" Whitespace stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Use modeline overrides
set modeline
set modelines=10

" color scheme
color desert

" Directories for swp files
set backupdir=~/.vim/backup,/tmp/
set directory=~/.vim/backup,/tmp

" Show (partial) command in the status line
set showcmd

" change the mapleader from \ to ,
let mapleader=","

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" scroll the window when we get near the edge
set scrolloff=4 sidescrolloff=10

" pick up external file modifications
set autoread

" allow backspacing over everything in insert mode
set backspace=indent,eol,start


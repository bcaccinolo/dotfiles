
" show line and column number
set ruler

" file type detection
filetype off
filetype plugin indent on

" definition of the content of the status line
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

" required for several plugins
set nocompatible

" never add  the BOM character
set nobomb

" enable syntax highlighting
syntax on

" Set encoding
set encoding=utf-8

" long command history list
set history=1000

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

"" show non printable characters
"set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Use modeline overrides
set modeline
set modelines=10

" Directories for swp files
set backupdir=~/.vim/backup,/tmp/
set directory=~/.vim/backup,/tmp
set backupskip=/tmp/*,/private/tmp/*

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

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal g'\"" | endif
endif

set cursorline

" always start commit message at the first line
autocmd FileType gitcommit call setpos('.', [0, 1, 1, 0])

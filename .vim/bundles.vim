

" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"##################################
"# My plugins
"##################################

" in Visual Mode: press S ) to enclose with ()
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'

" <leader> b e
Plugin 'vim-scripts/bufexplorer.zip'

Plugin 'gagoar/StripWhiteSpaces'
Plugin 'vim-scripts/ack.vim'

" <leader> c <space>
Plugin 'scrooloose/nerdcommenter'

Plugin 'scrooloose/nerdtree'
  let g:NERDTreeDirArrows=0
  let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
  map <Leader>n :NERDTreeToggle<CR>
  map <Leader>y :NERDTreeFind<CR>

Plugin 'ctrlpvim/ctrlp.vim'
  set wildignore+=*.pyc

  " excluding virtual env 'venv' and node_modules directories
  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](venv|node_modules)$'
    \ }

  let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:50,results:30'
  let g:ctrlp_map = '<leader>t'
  map <leader>b :CtrlPBuffer<cr>
  " Rails specific
  map <leader>fa  :CtrlPClearCache<cr>\|:CtrlP app<cr>
  map <leader>fc  :CtrlPClearCache<cr>\|:CtrlP app/controllers<cr>
  map <leader>fm  :CtrlPClearCache<cr>\|:CtrlP app/models<cr>
  map <leader>fv  :CtrlPClearCache<cr>\|:CtrlP app/views<cr>
  map <leader>fh  :CtrlPClearCache<cr>\|:CtrlP app/helpers<cr>
  map <leader>fs  :CtrlPClearCache<cr>\|:CtrlP app/assets/stylesheets<cr>
  map <leader>fj  :CtrlPClearCache<cr>\|:CtrlP app/assets/javascripts<cr>
  map <leader>fl  :CtrlPClearCache<cr>\|:CtrlP lib<cr>
  map <leader>ft  :CtrlPClearCache<cr>\|:CtrlP spec<cr>
  map <leader>fcc :CtrlPClearCache<cr>\|:CtrlP config<cr>
  map <leader>tt  :CtrlPTag<cr>
  map <leader>.   :CtrlPTag<cr>

Plugin 'msanders/snipmate.vim'
let g:snippets_dir="~/.vim/snippets/"

Plugin 'bcaccinolo/bclose'
  map <Leader>bd :Bclose<CR>

Plugin 'tmhedberg/matchit'

Plugin 'elixir-lang/vim-elixir'

" Themes
Plugin 'croaker/mustang-vim'
Plugin 'sickill/vim-monokai'
Plugin 'tomasr/molokai'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'nanotech/jellybeans.vim'
Plugin 'ricardovaleriano/vim-github-theme'
Plugin 'reedes/vim-colors-pencil'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jonathanfilip/lucius'
Plugin 'endel/vim-github-colorscheme'
Plugin 'morhetz/gruvbox'
Plugin 'geoffharcourt/one-dark.vim'
Plugin 'rakr/vim-one'
Plugin 'gosukiwi/vim-atom-dark'

""""""""""""""""""""""""""""""""""
" PYTHON plugins
""""""""""""""""""""""""""""""""""
Plugin 'nvie/vim-flake8'
" flake8 is run on every save
autocmd BufWritePost *.py call Flake8()

"Plugin 'davidhalter/jedi-vim'
Plugin 'fisadev/vim-isort'
let g:vim_isort_map = '<C-i>'
let g:vim_isort_python_version = 'python3'


Bundle 'ervandew/supertab'
let g:SuperTabNoCompleteAfter =  ['^', ',', '\s']

"##################################
"# END plugins
"##################################

" All r Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

" Vundle config
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle/
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdcommenter'
  map <leader>ff :NERDTreeFind<cr>

Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/bufexplorer.zip'

Bundle 'tpope/vim-endwise'
Bundle 'gagoar/StripWhiteSpaces'
Bundle 'vim-scripts/ack.vim'

" Bundle 'tsaleh/vim-matchit'
silent! runtime macros/matchit.vim

Bundle 'ctrlpvim/ctrlp.vim'
  set wildignore+=*.pyc
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

Bundle 'msanders/snipmate.vim'
  let g:snippets_dir="~/.vim/snippets/"

Bundle 'scrooloose/nerdtree'
  let g:NERDTreeDirArrows=0
  let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
  map <Leader>n :NERDTreeToggle<CR>

Bundle 'bcaccinolo/bclose'
  map <Leader>bd :Bclose<CR>

Bundle 'majutsushi/tagbar'
  nmap <F12> :TagbarToggle<CR>
  let g:tagbar_sort = 0
  let g:tagbar_compact = 1

" Themes
Bundle 'croaker/mustang-vim'
Bundle 'sickill/vim-monokai'
Bundle 'jpo/vim-railscasts-theme'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'nanotech/jellybeans.vim'
Bundle 'ricardovaleriano/vim-github-theme'
Bundle 'reedes/vim-colors-pencil'
Bundle 'altercation/vim-colors-solarized'
Bundle 'jonathanfilip/lucius'
" colorscheme peachpuff
colorscheme github

" Bundle 'klen/python-mode'
" let g:pymode_virtualenv = 1
" let g:pymode_run = 0
" let g:pymode_folding = 0
" let g:pymode_breakpoint = 0
" let g:pymode_lint_checkers = ['pyflakes', 'mccabe']
" let g:pymode_rope_complete_on_dot = 0
" let g:pymode_rope_autoimport = 0

Bundle 'ervandew/supertab'
let g:SuperTabNoCompleteAfter =  ['^', ',', '\s']



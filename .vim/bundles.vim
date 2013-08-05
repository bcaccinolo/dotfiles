" Vundle config
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle/
Bundle 'gmarik/vundle'
Bundle 'ddollar/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'vim-scripts/DrawIt'
Bundle 'tsaleh/vim-matchit'
Bundle 'tpope/vim-endwise'

Bundle 'kien/ctrlp.vim'
  let g:ctrlp_map = '<leader>t'
  " Rails specific
  map <leader>fa  :CtrlP app<cr>
  map <leader>fc  :CtrlP app/controllers<cr>
  map <leader>fm  :CtrlP app/models<cr>
  map <leader>fv  :CtrlP app/views<cr>
  map <leader>fh  :CtrlP app/helpers<cr>
  map <leader>fs  :CtrlP app/assets/stylesheets<cr>
  map <leader>fj  :CtrlP app/assets/javascripts<cr>
  map <leader>fl  :CtrlP lib<cr>
  map <leader>ft  :CtrlP spec<cr>
  map <leader>fcc :CtrlP config<cr>
  map <leader>fo  :CtrlP config/locales<cr>

Bundle 'msanders/snipmate.vim'
  let g:snippets_dir="~/.vim/snippets/"

Bundle 'scrooloose/nerdtree'
  let g:NERDTreeDirArrows=0
  let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
  map <Leader>n :NERDTreeToggle<CR>

Bundle 'bcaccinolo/bclose'
  map <Leader>bd :Bclose<CR>

" Bundle 'bcaccinolo/rspec-vim-folding'

Bundle 'gagoar/StripWhiteSpaces'
Bundle 'vim-scripts/ack.vim'

Bundle 'majutsushi/tagbar'
  nmap <F12> :TagbarToggle<CR>
  let g:tagbar_sort = 0
  let g:tagbar_compact = 1

" Bundle 'Lokaltog/vim-easymotion'

" Themes
" Bundle 'croaker/mustang-vim'
" Bundle 'chriskempson/vim-tomorrow-theme'
" Bundle 'sickill/vim-monokai'
Bundle 'jpo/vim-railscasts-theme'
colorscheme railscasts


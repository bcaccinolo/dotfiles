
set rtp+=~/.vim/vundle.git/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'ddollar/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'ervandew/supertab'

Bundle 'wincent/Command-T'
  let g:CommandTMaxHeight=20
  map <Leader>ft :CommandTFlush<CR>

Bundle 'msanders/snipmate.vim'
  let g:snippets_dir="~/.vim/snippets/"

Bundle 'wycats/nerdtree'
  let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
  map <Leader>n :NERDTreeToggle<CR>


" Bundle 'tpope/vim-haml'
" Bundle 'michaeljsmith/vim-indent-object'
" Bundle 'pangloss/vim-javascript'
" Bundle 'hallettj/jslint.vim'
" Bundle 'robgleeson/hammer.vim'
" Bundle 'wycats/nerdtree'
" Bundle 'ddollar/nerdcommenter'
" Bundle 'tpope/vim-surround'
" Bundle 'vim-scripts/taglist.vim'
" Bundle 'tpope/vim-vividchalk'
" Bundle 'altercation/vim-colors-solarized'
" Bundle 'ervandew/supertab'
" Bundle 'tpope/vim-cucumber'
" Bundle 'timcharper/textile.vim'
" Bundle 'tpope/vim-rails'
" Bundle 'taq/vim-rspec'
" Bundle 'vim-scripts/ZoomWin'
" Bundle 'msanders/snipmate.vim'
" Bundle 'tpope/vim-markdown'
" Bundle 'tsaleh/vim-align'
" Bundle 'tpope/vim-unimpaired'
" Bundle 'vim-scripts/searchfold.vim'
" Bundle 'tpope/vim-endwise'
" Bundle 'wgibbs/vim-irblack'
" Bundle 'kchmck/vim-coffee-script'
" Bundle 'scrooloose/syntastic'
" Colors
" Bundle 'mrtazz/molokai.vim'
" Bundle 'janus_themes'
" Bundle "http://conque.googlecode.com/files/conque_1.1.tar.gz"


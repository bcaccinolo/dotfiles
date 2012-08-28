
" Vundle confifg
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" git clone https://github.com/gmarik/vundle.git
Bundle 'gmarik/vundle'

Bundle 'ddollar/nerdcommenter'
Bundle 'tpope/vim-surround'

Bundle 'ervandew/supertab'

Bundle 'wincent/Command-T'
  let g:CommandTMaxHeight=20
  let g:CommandTMatchWindowReverse=1
  map <Leader>ff  :CommandTFlush<CR>
  map <leader>t   :CommandTFlush<cr>\|:CommandT <cr>
  " Rails specific 
  map <leader>fa  :CommandTFlush<cr>\|:CommandT app<cr>
  map <leader>fc  :CommandTFlush<cr>\|:CommandT app/controllers<cr>
  map <leader>fm  :CommandTFlush<cr>\|:CommandT app/models<cr>
  map <leader>fv  :CommandTFlush<cr>\|:CommandT app/views<cr>
  map <leader>fh  :CommandTFlush<cr>\|:CommandT app/helpers<cr>
  map <leader>fs  :CommandTFlush<cr>\|:CommandT app/stylesheets<cr>
  map <leader>fj  :CommandTFlush<cr>\|:CommandT public/javascripts<cr>
  map <leader>fl  :CommandTFlush<cr>\|:CommandT lib<cr>
  map <leader>ft  :CommandTFlush<cr>\|:CommandT spec<cr>
  map <leader>fcc :CommandTFlush<cr>\|:CommandT config<cr>
  map <leader>fo  :CommandTFlush<cr>\|:CommandT config/locales<cr>

Bundle 'msanders/snipmate.vim'
  let g:snippets_dir="~/.vim/snippets/"

Bundle 'wycats/nerdtree'
  let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
  let NERDTreeShowBookmarks=1
  map <Leader>n :NERDTreeToggle<CR>

Bundle 'bcaccinolo/rspec-vim-folding'

Bundle 'bcaccinolo/bclose'
  map <Leader>bd :Bclose<CR>

Bundle 'vim-scripts/bufexplorer.zip'

Bundle 'vim-scripts/DrawIt'

Bundle 'tpope/vim-endwise'

Bundle 'tsaleh/vim-matchit'

Bundle 'altercation/vim-colors-solarized'
color solarized

" Bundle 'scrooloose/syntastic'

Bundle 'tpope/vim-rails'

" Bundle 'michaeljsmith/vim-indent-object'
" Bundle 'vim-scripts/taglist.vim'
" Bundle 'tpope/vim-vividchalk'
" Bundle 'altercation/vim-colors-solarized'
" Bundle 'tpope/vim-markdown'
" Bundle 'tsaleh/vim-align'
" Bundle 'tpope/vim-unimpaired'
" Bundle 'vim-scripts/searchfold.vim'
" Bundle 'tpope/vim-endwise'
" Bundle 'wgibbs/vim-irblack'
" Bundle 'kchmck/vim-coffee-script'
" Bundle 'scrooloose/syntastic'


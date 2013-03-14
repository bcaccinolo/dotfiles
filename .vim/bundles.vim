" Vundle config
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" git clone https://github.com/gmarik/vundle.git
Bundle 'gmarik/vundle'
Bundle 'ddollar/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'vim-scripts/DrawIt'
Bundle 'tsaleh/vim-matchit'
Bundle 'tpope/vim-endwise'

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
  map <leader>fs  :CommandTFlush<cr>\|:CommandT app/assets/stylesheets<cr>
  map <leader>fj  :CommandTFlush<cr>\|:CommandT app/assets/javascripts<cr>
  map <leader>fl  :CommandTFlush<cr>\|:CommandT lib<cr>
  map <leader>ft  :CommandTFlush<cr>\|:CommandT spec<cr>
  map <leader>fcc :CommandTFlush<cr>\|:CommandT config<cr>
  map <leader>fo  :CommandTFlush<cr>\|:CommandT config/locales<cr>

Bundle 'msanders/snipmate.vim'
  let g:snippets_dir="~/.vim/snippets/"

Bundle 'scrooloose/nerdtree'
  let g:NERDTreeDirArrows=0
  let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
  map <Leader>n :NERDTreeToggle<CR>

Bundle 'altercation/vim-colors-solarized'
  " syntax enable
  " set background=light
  " let g:solarized_termcolors=256
  " colorscheme solarized

Bundle 'bcaccinolo/bclose'
  map <Leader>bd :Bclose<CR>

" Bundle 'bcaccinolo/rspec-vim-folding'

Bundle 'gagoar/StripWhiteSpaces'
Bundle 'vim-scripts/ack.vim'
Bundle 'majutsushi/tagbar'
  nmap <F12> :TagbarToggle<CR>

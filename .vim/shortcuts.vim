"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" SHORTCUTS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" cool feature
nnoremap ; :

" Tired of clearing highlighted searches by searching for “ldsfhjkhgakjks”?
nmap <silent> ,/ :nohlsearch<CR>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Open a new tab
map <Leader>e :tabnew<CR>
map <Leader>> :tabnext<CR>
map <Leader>< :tabprevious<CR>

" Buffer easy navigation
:nnoremap <Leader>1 :bprevious<CR>
:nnoremap <Leader>2 :bnext<CR>

:nnoremap <Leader>11 :colorscheme monokai<CR>
:nnoremap <Leader>22 :colorscheme jellybeans<CR>
:nnoremap <Leader>33 :colorscheme evening<CR>
:nnoremap <Leader>44 :colorscheme desert<CR>
:nnoremap <Leader>55 :colorscheme solarized<CR>
:nnoremap <Leader>66 :colorscheme slate<CR>
:nnoremap <Leader>77 :colorscheme railscasts<CR>
:nnoremap <Leader>88 :colorscheme pencil<CR>

" help with hash type in Ruby
imap <C-l> <Space>=><Space>

" reload all buffers
map <Leader>R :bufdo :e!<CR>

" reload current buffer
map <Leader>r :e!<CR>

" q to split a line to 80 char long
map Q 080lwbels<CR><ESC>

map <F9> 10j
map <F10> 10k

map <C-w><F9>  :resize +7<CR>
map <C-w><F10> :resize -7<CR>

" navigate through search results
map <F8> :cn<CR>
map <F7> :cprevious<CR>

" move through wrapped lines
nnoremap j gj
nnoremap k gk

" Better comand-line editing
" remapping command-line mode
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>

map <S-k> <Nop>

" format JSON
nmap =j :%!python -m json.tool<CR>

" CTAGS
"
" Ctrl+] to jump to tag when over a word
" Ctrl+T to pop back
" :ta for tags
"
nmap =t :!ctags -R --extra=f .<cr>
" open tag in a new tab
nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T

" CHEAT SHEET :)
"
" select word under cursor: viw
" change word under cursor: ciw
"
" Search and replace from cursor position: :.,$s/A/B/gc
"  . means from cursor position
"  $ means to the end of file
"
" D : delete from cursor to end of line
" C : change from cursor to end of line
"
" Create an empty buffer in splitted view: CTRL-W n
"
" ctrl-d     scroll forward half screen
" ctrl-u     scroll backward half screen
"
" ctrl-o     move the last cursor position
" ctrl-i     move the forward cursor position
"
" H to jump as ‘h’igh as possible (first line of the window)
" M to jump to the ‘m’iddle of the window
" L to jump as ‘l’ow as possible (last line being displayed)
"
" zz center the screen
"
" COPY Registers
"
" to copy line in reg 1 : "1yy
"
" use d f y to delete until 'y' included
" use d t y to delete until 'y' NOT included
"
"
" C-t open in new tab with nerdtree
"

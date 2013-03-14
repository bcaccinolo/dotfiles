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

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
" map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Unimpaired configuration
" Bubble single lines
" nmap <C-Up> [e
" nmap <C-Down> ]e
" Bubble multiple lines
" vmap <C-Up> [egv
" vmap <C-Down> ]egv

" reindent the entire file
map <Leader>I gg=G``<CR>

" Open a new tab
map <Leader>e :tabnew<CR>
map <Leader>> :tabnext<CR>
map <Leader>< :tabprevious<CR>

" Buffer easy navigation
:nnoremap <Leader>1 :bprevious<CR>
:nnoremap <Leader>2 :bnext<CR>

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
map <F7> :cn<CR>
map <F8> :cprevious<CR>

" move through wrapped lines
nnoremap j gj
nnoremap k gk

" Better comand-line editing
" remapping command-line mode
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" CHEAT SHEET :)
"
" Close all other windows than the one focused:  CTRL-W o (or CTRL-W CTRL-O), which does the same thing as :only in even fewer keystrokes
"
" Search and replace from cursor position: :.,$s/A/B/gc
"  . means from cursor position
"  $ means to the end of file
"
" D : delete from cursor to end of line

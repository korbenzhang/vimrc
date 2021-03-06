" options: no yes menu

set winaltkeys=no

" alt shortcut

" GoTo file
map <A-f> gf

" GoTo declare
map <A-d> gd


" insert mode alt key funcs.

"cursor
imap <A-h> <Left>
imap <A-j> <Down>
imap <A-k> <Up>
imap <A-l> <Right>

" close
map <A-q> :q<cr>
imap <A-q> <ESC><A-q>

" save
map <A-s> :up<cr>
imap <A-s> <ESC><A-s>


"error
map <A-n> :cnext<CR>
imap <A-n> <Esc><A-n>i

map <A-p> :cprevious<CR>
imap <A-p> <Esc><A-p>i

" open new line
imap <A-o> <Esc>o

" yank current line
imap <A-c> <Esc>Ya

" paste to curret line
imap <A-v> <Esc>pi

" delete current line
imap <A-r> <Esc>ddO

" delete to end of line
imap <A-u> <Esc>wd$i

" delete word in cursor
imap <A-w> <Esc>ebdei

" insert last delete word
imap <A-W> <C-R>w

" delete words between ''
imap <A-m> <Esc>di"i



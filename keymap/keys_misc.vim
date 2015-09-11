" clear highlight match.
nmap <silent> <esc><esc> :noh<cr>

" Don't use Ex mode, use Q for formatting
map  Q gq

" alt not access menu
set winaltkeys=no

map <F4> :close<cr>
nmap <C-T> :tabnew<cr>

nmap <C-s> :w<cr>
imap <C-s> <esc><C-s>

nmap <M-s> :w<cr>
imap <M-s> <C-O>:w<cr>

nmap <M-q> :close<cr>
imap <M-q> <esc><M-q>

"Delete Lines
nmap <C-k> dd
imap <C-k> <esc><C-k>i

" Words
nmap <S-Del> dw
imap <S-Del> <esc><S-Del>

" GoTo file
nmap gf :tabnew <cfile><cr>
nmap <M-f> gf
imap <M-f> <esc>gf

" GoTo Define
nmap <M-d> gd
imap <M-d> <esc><M-d>


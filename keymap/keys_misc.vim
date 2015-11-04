" clear highlight match.
nmap <silent> <esc><esc> :noh<cr>

" Make Y behave like other capitals.
nnoremap Y y$

" Don't use Ex mode, use Q for formatting
map  Q gq

" For when you forget to sudo.. Really Write the file.
cnoremap w!! w !sudo tee % >/dev/null



map <F4> :close<cr>
nmap <C-T> :tabnew<cr>

nmap <C-s> :w<cr>
imap <C-s> <C-O>:w<cr>

nmap <M-s> :w<cr>
imap <M-s> <C-O>:w<cr>

nmap <M-q> :close<cr>
imap <M-q> <C-O>:close<cr>

"Delete Lines
nmap <C-k> dd
imap <C-k> <C-O>dd

" Words
nmap <S-Del> dw
imap <S-Del> <C-O>dw

" GoTo file
nmap gf :tabnew <cfile><cr>
nmap <M-f> gf
imap <M-f> <C-O>gf

" GoTo Define
nmap <M-d> gd
imap <M-d> <C-O>gd


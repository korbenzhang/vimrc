" Move lines

nmap <M-Down> :<C-u>move .+1<CR>
imap <M-Down> <C-o>:<C-u>move .+1<CR>
vmap <M-Down> :move '>+1<CR>gv

nmap <M-Up> :<C-u>move .-2<CR>
imap <M-Up> <C-o>:<C-u>move .-2<CR>
vmap <M-Up> :move '<-2<CR>gv

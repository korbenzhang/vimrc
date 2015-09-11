" Move lines
" ========================
nmap <C-Down> :<C-u>move .+1<CR>
imap <C-Down> <C-o>:<C-u>move .+1<CR>
vmap <C-Down> :move '>+1<CR>gv

nmap <C-Up> :<C-u>move .-2<CR>
imap <C-Up> <C-o>:<C-u>move .-2<CR>
vmap <C-Up> :move '<-2<CR>gv

" Tab Window

"map <leader>t :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>te :tabedit **/
map <leader>tm :tabmove
map <leader>tn :tabnew<cr>

nmap <C-T> :tabnew<cr>

"key mapping for window navigation
"map <C-h> <C-w>h
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"map <C-l> <C-w>l

"nmap <C-TAB> :tabNext<CR>
"imap <C-TAB> <ESC><ESC>:tabNext<CR>
"nmap <C-S-TAB> :tabnext<CR>
"imap <C-S-TAB> <ESC><ESC>:tabnext<CR>

nmap <leader><TAB> :tabNext<CR>
nmap <leader><S-TAB> :tabnext<CR>
"map <F7> <ESC>:tabNext<CR>
"map <F8> <ESC>:tabnext<CR>

map gf :tabnew <cfile><cr>
"map <C-F4> :tabclose<cr>
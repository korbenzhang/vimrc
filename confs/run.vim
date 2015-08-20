" Run
" F5   :run
" S-F5 :build
" F6   :test
" =================

map <leader>r <F5>

imap <F5> <ESC><F5>

au FileType js nmap <F5> :up<CR>:! node %<CR>
au FileType javascript nmap <F5> :up<CR>:! node %<CR>
au FileType ruby nmap <F5> :up<CR>:! ruby %<CR>
au FileType php nmap <F5> :up<CR>:! php %<CR>
au FileType bash nmap <buffer> <F5> :up<CR>:! bash %<CR>
au FileType sh nmap <buffer> <F5> :up<CR>:! bash %<CR>
au FileType python nmap <F5> :up<CR>:! python %<CR>
au FileType groovy nmap <F5> :up<CR>:! groovy %<CR>
au FileType scala nmap <F5> :up<CR>:! scala %<CR>
au FileType perl nmap <F5> :up<CR>:! perl %<CR>
au FileType sql nmap <F5> :up<CR>:! mysql -uroot -p < %<CR>
au FileType dosbatch nmap <F5> :up<CR>:!%<CR>
au FileType make nmap <F5> :make<cr>


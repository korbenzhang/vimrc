"Go Lang

au BufRead,BufNewFile *.go setl filetype=go
au FileType go set dictionary=~/.vim/dict/golang.dict

"Key map

if IsInWin()
	au FileType go nmap <buffer> <F5> :up<cr>:silent !start cmd /K go run %<CR>
	au FileType go nmap <buffer> <F6> :silent !start cmd /K go test<CR>
else
	au FileType go nmap <buffer> <F5> :up<cr>:silent !go run %<CR>
	au FileType go nmap <buffer> <F6> :silent !go test<CR>
endif

au FileType go imap <buffer> <F5> <C-O><F5>
au FileType go imap <buffer> <F6> <C-O><F6>

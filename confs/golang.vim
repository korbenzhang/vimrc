"Go Lang

au BufRead,BufNewFile *.go setl filetype=go
au FileType go set dictionary=~/.vim/dict/golang.dict

"Key map
au FileType go nmap <buffer> <F5> :up<cr>:!go run % 
au FileType go nmap <buffer> <F6> :!go test<CR>

if IsInWin()
	"au FileType go nmap <buffer> <F5> :up<cr>: !start cmd /K go run %<CR>
	"au FileType go nmap <buffer> <F6> :!start cmd /K go test<CR>
endif

au FileType go imap <buffer> <F5> <C-O><F5>
au FileType go imap <buffer> <F6> <C-O><F6>

" Install on save
"autocmd BufWritePre *.go :GoInstall<cr>


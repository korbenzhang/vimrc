" map for F1 ... F12

"F3 Goto File
" like eclipse? F3 go to definition
func! MapGoToFile()
	if exists("b:NERDTreeType") 
		map <F3> t
	else
		map <F3> gf
		imap <F3> <C-O><F3>
	endif
endfunc

" F3 Goto File
" in nerdtree means open file.
" autocmd bufenter * :call MapF3()

" F3 GoTo Def 
nmap <F3> gd
imap <F3> <C-O>gd

" close give up modify
nmap <M-F4> :close!<cr>
imap <M-F4> <C-O><F4>

" F5 Run / Buil / Compile

" F6 Test

"F7 Next Error
nmap  <F7> :cn<cr>
imap <F7> <C-O>:cn<cr>

"F8 Previous Error
map  <F8> :cp<cr>
imap <F8> <C-O>:cp<cr>


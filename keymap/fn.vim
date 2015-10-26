" map for F1 ... F12

" F2 Save buffer
" where file is changed do write.
nmap <F2> :up<cr>
imap <F2> <C-O><F2>

"F3 Goto File
function! MapGoToFile()
	if exists("b:NERDTreeType") 
		map <F3> t
	else
		map <F3> gf
		imap <F3> <C-O><F3>
	endif
endfunction

" F3 Goto File
" in nerdtree means open file.
" autocmd bufenter * :call MapF3()

" F3 GoTo Def 
nmap <F3> gt
imap <F3> <C-O>gt

" F4 Close
nmap <F4> :close<cr>
imap <F4> <C-O><F4>

" close give up modify
nmap <M-F4> :close!<cr>
imap <M-F4> <C-O><F4>

" F5 Run / Buil / Compile

" F6 Test



" map for F1 ... F12

" F2 Save buffer
" where file is changed do write.
nmap <F2> :up<cr>
imap <F2> <ESC><F2>

function! MapF3()
	if exists("b:NERDTreeType") 
		map <F3> t
	else
		map <F3> gf
		imap <F3> <ESC><F3>
	endif
endfunction

" F3 Goto File
" in nerdtree means open file.
autocmd bufenter * :call MapF3()


" F4 Close
nmap <F4> :close<cr>
imap <F4> <ESC><F4>

" close give up modify
nmap <M-F4> :close!<cr>
imap <M-F4> <ESC><F4>

" F5 Run / Buil / Compile

" F6 Test

" F7
" F8
" F9 NerdTreeToggle
" F10 Menu
" F11 Open
map <F11> <F3>

" F12 Close
map <F12> <F4>

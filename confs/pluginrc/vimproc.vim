" vimsheel needs vimproc.
"
" see $HOME/.vim/bundle/vimproc.vim

if has("win32")
	Plug 'Shougo/vimproc.vim'
else
	Plug 'Shougo/vimproc.vim', { 'do': 'make' }
endif


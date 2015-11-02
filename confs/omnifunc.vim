" Omni Complete
" ================

if has("autocmd") && exists("+omnifunc")
	autocmd Filetype *
				\if &omnifunc == "" |
				\setlocal omnifunc=syntaxcomplete#Complete |
				\endif
endif

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd Filetype html set omnifunc=htmlcomplete#CompleteTags
autocmd Filetype xml set omnifunc=xmlcomplete#CompleteTags
autocmd Filetype css set omnifunc=csscomplete#CompleteCSS
autocmd Filetype c set omnifunc=ccomplete#Complete
autocmd Filetype java set omnifunc=javacomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete


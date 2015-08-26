" Omni Complete
" ================

set omnifunc=syntaxcomplete#Complete
setlocal omnifunc=syntaxcomplete#Complete

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd Filetype html set omnifunc=htmlcomplete#CompleteTags
autocmd Filetype xml set omnifunc=xmlcomplete#CompleteTags
autocmd Filetype css set omnifunc=csscomplete#CompleteCSS
autocmd Filetype c set omnifunc=ccomplete#Complete
autocmd Filetype java set omnifunc=javacomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete

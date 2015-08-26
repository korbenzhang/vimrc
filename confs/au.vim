" Autocmd
" ========================

au BufRead,BufNewFile *.md setl filetype=markdown
au BufRead,BufNewFile *.tml setl filetype=html
au BufRead,BufNewFile *.jspx setl filetype=jsp
au BufRead,BufNewFile *.m setl filetype=objc
au BufRead,BufNewFile *.gradle setl filetype=groovy

"au FileType text setl textwidth=78
"au FileType text setl wrapmargin=78

" delete end line space
" ----------------------
"au BufWritePre * execute ":s/\s*$//"
"au BufWritePre * execute ':%s/\s\+$//g'


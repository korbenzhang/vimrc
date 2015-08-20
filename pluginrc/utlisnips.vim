" UltiSnips require vim 7.0 and later, and require vim compile with
" python2 or python3.
" ----------------------------------------------------
if version < 702
	finish
endif

Plugin 'SirVer/ultisnips'

" Trigger configuration.
" -----------------------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<s-tab>"
"let g:UltiSnipsJumpBackwardTrigger="c-b"
"let g:UltiSnipsJumpBackwardTrigger="c-b"

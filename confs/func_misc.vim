" func misc

func! TrimEndWhiteSpace()
	exe "normal mz"
	%s/\s\+$//ge
	exe "normal `z"
endfunc
command! -bar -narg=0 TrimEndWhiteSpace call TrimEndWhiteSpace()

function! HasPaste()
	if &paste
		return 'PASTE MODE  '
	endif
	return ''
endfunction

func! NoBell()
	set noerrorbells visualbell t_vb=
	if has('autocmd')
		autocmd GUIEnter * set visualbell t_vb=
	endif
	"set noerrorbells
	"set novisualbell
endfunc
command! -bar -narg=0 NoBell  call NoBell()

function! UniqLine()
	exe "normal mz"
	%s/^\(.*\)\(\n\1\)\+$/\1/
	exe "normal `z"
endfunction
command! -bar -narg=0 UniqLine  call UniqLine()

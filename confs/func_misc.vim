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

function! UniqLine()
	exe "normal mz"
	%s/^\(.*\)\(\n\1\)\+$/\1/
	exe "normal `z"
endfunction
command! -bar -narg=0 UniqLine  call UniqLine()

func! DisableBell()
	set vb t_vb=
endfunc
command! -bar -narg=0 DisableBell  call DisableBell()

func! DisableCompl()
	set completefunc=
endfunc
command! -bar -narg=0 DisableCompl  call DisableCompl()



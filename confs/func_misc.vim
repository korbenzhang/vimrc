" func misc

func! TrimEndWhiteSpace()
	exe "normal mz"
	%s/\s\+$//ge
	exe "normal `z"
endfunc
command! -bar -narg=0 TrimEndWhiteSpace call TrimEndWhiteSpace()
"au BufWritePre * execute ':%s/\s\+$//g'

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

func! AddBlankLine()
	exe ':%s/\n/\r\r/ge'
endfunc
command! -bar -narg=0 AddBlankLine call AddBlankLine()

func! GitRmFile()
	exec '!git rm % -f'
endfunc
command! -bar -narg=0 GitRmFile call GitRmFile()

func! RmFile()
	exec '!rm % -f'
endfunc
command! -bar -narg=0 RmFile call RmFile()



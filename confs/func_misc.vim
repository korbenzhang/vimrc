" func misc

func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

command! -bar -narg=0 DeleteTrailingWS  call DeleteTrailingWS()

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
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



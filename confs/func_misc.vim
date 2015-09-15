

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





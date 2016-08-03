" Filetype detect

" Grep
set grepprg=grep\ -nH\ $*

set history=500

" viminfo
if !has("nvim")
	set viminfo='10,\"100,:20,%,n~/.viminfo
endif

"switch to directory of current file
command! CD cd %:p:h

"set cdpath=$HOME/.vim,$PD,

"set report=0

set iskeyword+=_,$,@,%,#,-

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthi
endif

set switchbuf=useopen


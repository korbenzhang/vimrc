
" Grep
"set grepprg=grep\ -nH\ $*

"set history=500

"switch to directory of current file
command! CD cd %:p:h

"set cdpath=$HOME/.vim,$PD,

"set report=0

"Keywords are used in searching and recognizing with many commands:
"w", etc.  
"set iskeyword+=_,$,@,%,#,-

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthi
endif

" default is ''
" useopen
" usetab
" spit
" newtab
set switchbuf=newtab


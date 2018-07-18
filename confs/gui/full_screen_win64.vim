" WinGUI fullscreen

if !(has("gui_running") && has("win64"))
	finish
endif

" prebuild gvimfullscreen-x64 is in ~/.vim/bin/
" You show copy it to $VIM first.
" cp ~/.vim/bin/gvimfullscreen-x64.dll $VIMRUNTIME

func! ToggleFullScreen()
	call libcallnr("gvimfullscreen-x64.dll", "ToggleFullScreen", 0)
endfunc

func! ToggleFullScreen2()
	call libcall("gvimfullscreen-x64.dll", 'ToggleFullScreen', 27 + 29*256 + 30*256*256)
endfunc

command! -bar -narg=0 ToggleFullScreen  call ToggleFullScreen()
command! -bar -narg=0 ToggleFullScreen2  call ToggleFullScreen2()

map <silent> <F11> :call ToggleFullScreen()<CR>


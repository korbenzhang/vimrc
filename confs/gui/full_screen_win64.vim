" WinGUI fullscreen

if !(has("gui_running") && has("win64"))
	finish
endif

" prebuild gvimfullscreen-x64 is in ~/.vim/misc/tools/
" You show copy it to $VIM first.
" cp ~/.vim/misc/tools/gvimfullscreen-x64.dll $VIMRUNTIME

function! ToggleFullScreenWin()
	call libcallnr("gvimfullscreen-x64.dll", "ToggleFullScreen", 0)
endfunction

func!	ToggleFullScreen2()
	call libcall("gvimfullscreen-x64.dll", 'ToggleFullScreen', 27 + 29*256 + 30*256*256)
endfunc

command! -bar -narg=0 ToggleFullScreenWin  call ToggleFullScreenWin()

map <silent> <F11> :call ToggleFullScreenWin()<CR>


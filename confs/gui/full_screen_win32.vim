" WinGUI fullscreen

if !(has("gui_running") && has("win32"))
	finish
endif

func! ToggleFullScreen()
	call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)
endfunc

command! -bar -narg=0 ToggleFullScreen  call ToggleFullScreen()

map <silent> <F11> :call ToggleFullScreen()<CR>


" WinGUI fullscreen

if !(has("gui_running") && has("win32"))
	finish
endif

function! ToggleFullScreenWin()
	call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)
endfunction

command! -bar -narg=0 ToggleFullScreenWin  call ToggleFullScreenWin()

map <silent> <F11> :call ToggleFullScreenWin()<CR>


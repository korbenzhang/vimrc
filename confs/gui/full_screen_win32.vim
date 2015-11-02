" WinGUI fullscreen
" ========================

if !(has("gui_running") && has("gui_win32"))
	finish
endif

if !filereadable(expand('$VIMRUNTIME/gvimfullscreen.dll')) 
	finish
endif

function! ToogleFullScreenWin()
	call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)
endfunction

command! -bar -narg=0 ToogleFullScreenWin  call ToogleFullScreenWin()

map <silent> <F11> :call ToogleFullScreenWin()<CR>



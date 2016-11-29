" WinGUI fullscreen

if !(has("gui_running"))
	finish
endif

if !filereadable(expand('$VIMRUNTIME/gvimfullscreen-x64.dll')) 
	finish
endif

function! ToogleFullScreenWin()
	call libcallnr("gvimfullscreen-x64.dll", "ToggleFullScreen", 0)
endfunction

command! -bar -narg=0 ToogleFullScreenWin  call ToogleFullScreenWin()

map <silent> <F11> :call ToogleFullScreenWin()<CR>



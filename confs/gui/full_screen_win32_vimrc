" WinGUI fullscreen
" ========================

if !(has("gui_running") && has("gui_win32"))
	finish
endif

if !filereadable(expand('$VIMRUNTIME/gvimfullscreen.dll')) 
	finish
endif

function! GvimFullScreen()
	call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)
endfunction

command! -bar -narg=0 GvimFullScreen  call GvimFullScreen()

"map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>





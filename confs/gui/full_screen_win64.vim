" WinGUI fullscreen

if !(has("gui_running"))
	finish
endif

" prebuild gvimfullscreen-x64 is in ~/.vim/misc/tools/
" You show copy it to $VIM first.

function! ToogleFullScreenWin()
	call libcallnr("gvimfullscreen-x64.dll", "ToggleFullScreen", 0)
endfunction

command! -bar -narg=0 ToogleFullScreenWin  call ToogleFullScreenWin()

map <silent> <F11> :call ToogleFullScreenWin()<CR>



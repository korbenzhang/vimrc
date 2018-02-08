" linux gtk gui

if !has("gui_running") 
	finish
endif

if !has("gui_gtk")
	finish
endif

if !executable('wmctrl') 
	call system('sudo apt-get install wmctrl -y')
endif

" need install wmctrl
let g:fullscreen = 0
func! ToggleFullScreen()
    if g:fullscreen == 1
        let g:fullscreen = 0
        let mod = "remove"
    else
        let g:fullscreen = 1
        let mod = "add"
    endif
    call system("wmctrl -ir " . v:windowid . " -b " . mod . ",fullscreen")
endfunc
command! -bar -narg=0 ToggleFullScreen  call ToggleFullScreen()

map <silent> <F11> :call ToggleFullScreen()<CR>

" Enter fullsecreen when GUI start.
"au GuiEnter * call ToggleFullScreen()


" linux gtk gui
" ========================

if !(has("gui_running") && has("gui_gtk2"))
	finish
endif

if !executable('wmctrl') 
	"echo "need install wmctrl"
	"echo "sudo apt-get install wmctrl"
	"echo ""
	finish
endif

" need install wmctrl
let g:fullscreen = 0
function! ToggleFullscreen()
    if g:fullscreen == 1
        let g:fullscreen = 0
        let mod = "remove"
    else
        let g:fullscreen = 1
        let mod = "add"
    endif
    call system("wmctrl -ir " . v:windowid . " -b " . mod . ",fullscreen")
endfunction
command! -bar -narg=0 ToggleFullscreen  call ToggleFullscreen()

"map <silent> <F11> :call ToggleFullscreen()<CR>

" Enter fullsecreen when GUI start.
"au GuiEnter * call ToggleFullscreen()

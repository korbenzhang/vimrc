" config for windows GUI gvim.
if !IsInWinGui()
	finish
endif


func! MaximizeWindow()
	if has('gui_running') && has("win32")
		simalt ~x
	endif
endfunc
command! -bar -narg=0 MaximizeWindow  call MaximizeWindow()

" MaximizeWindow when givm startup.
if has('gui_running') && has("win32")
	"au GUIEnter * simalt ~x
endif

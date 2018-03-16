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

if exists("g:maxwin")
	"do nothing
else
	let g:maxwin=0
endif

" MaximizeWindow when givm startup.
if has('gui_running') && has("win32") && (g:maxwin==0)
	au GUIEnter * simalt ~x
	let g:maxwin=1
endif

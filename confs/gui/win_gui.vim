
if !IsInWinGui()
	finish
endif

if has("directx") && $VIM_USE_DIRECTX != '0'
  set renderoptions=type:directx
  let s:use_directx=1
endif

func! MaximizeWindow()
	if has('gui_running') && has("win32")
		simalt ~x
	endif
endfunc
command! -bar -narg=0 MaximizeWindow  call MaximizeWindow()

if has('gui_running') && has("win32")
	au GUIEnter * simalt ~x
endif

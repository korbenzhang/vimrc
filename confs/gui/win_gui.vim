
if !IsInWinGui()
	finish
endif

if has("directx") && $VIM_USE_DIRECTX != '0'
  set renderoptions=type:directx
  let s:use_directx=1
endif

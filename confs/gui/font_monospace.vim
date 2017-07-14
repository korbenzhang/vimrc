
if !has("gui_running")
	finish
endif

" Set GUI Font
if IsInWinGui()
	set guifont=Monospace:h13
elseif has("gui_gtk2")
	set guifont=Monospace\ 13
elseif has("gui_macvim")
	set guifont=Monospace:h13
else
	set guifont=Monospace:h13
endif


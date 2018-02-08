
if !has("gui_running")
	finish
endif

" Set GUI Font
if IsInWinGui()
	set guifont=Monospace:h17 
elseif has("gui_gtk2")
	set guifont=Monospace\ 17
elseif has("gui_macvim")
	set guifont=Monospace:h17
else
	set guifont=Monospace:h17
endif


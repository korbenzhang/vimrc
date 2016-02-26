
if !has("gui_running")
	finish
endif

" Set GUI Font
if has("gui_win32")
	set guifont=Monospace:h18
elseif has("gui_gtk2")
	set guifont=Monospace\ 18
elseif has("gui_macvim")
	set guifont=Monospace:h18
else
	set guifont=Monospace:h18
endif



if !has("gui_running")
	finish
endif

" Set GUI Font
if has("gui_win32")
	set guifont=Monospace:h16
elseif has("gui_gtk2")
	set guifont=Monospace\ 16
elseif has("gui_macvim")
	set guifont=Monospace:h16
else
	set guifont=Monospace:h16
endif

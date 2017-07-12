
if !has("gui_running")
	finish
endif

" Set GUI Font
if has("gui_win32")
	set guifont=Monaco:h20:cANSI 
elseif has("gui_gtk2")
	set guifont=Monaco\ 20
elseif has("gui_macvim")
	set guifont=Monaco:h20
else
	set guifont=Monaco:h20
endif


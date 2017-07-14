
if !has("gui_running")
	finish
endif

" Set GUI Font
if IsInWinGui()
	set guifont=Monaco:h11:cANSI 
elseif has("gui_gtk2")
	set guifont=Monaco\ 11
elseif has("gui_macvim")
	set guifont=Monaco:h11
else
	set guifont=Monaco:h11
endif


if !has("gui_running")
	finish
endif

" Set GUI Font
if IsInWinGui()
	set guifont=Monaco:h13:cANSI 
elseif has("gui_gtk2")
	set guifont=Monaco\ 13
elseif has("gui_macvim")
	set guifont=Monaco:h13
else
	set guifont=Monaco:h13
endif


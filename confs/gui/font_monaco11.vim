
if !has("gui_running")
	finish
endif

" Set GUI Font
if IsInWinGui()
	set guifont=Monaco:h11 
elseif has("gui_gtk")
	set guifont=Monaco\ 11
elseif has("gui_macvim")
	set guifont=Monaco:h11
else
	set guifont=Monaco:h11
endif



if !has("gui_running")
	finish
endif

" Set GUI Font
if IsInWinGui()
	set guifont=Monaco:h15
elseif has("gui_gtk2")
	set guifont=Monaco\ 15
elseif has("gui_macvim")
	set guifont=Monaco:h15
else
	set guifont=Monaco:h15
endif


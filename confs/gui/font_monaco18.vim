
if !has("gui_running")
	finish
endif

" Set GUI Font
if IsInWinGui()
	set guifont=Monaco:h18
elseif has("gui_gtk")
	set guifont=Monaco\ 18
elseif has("gui_macvim")
	set guifont=Monaco:h18
else
	set guifont=Monaco:h18
endif


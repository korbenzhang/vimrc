
if !has("gui_running")
	finish
endif

" Set GUI Font
if IsInWinGui()
	set guifont=Monaco:h14
elseif has("gui_gtk")
	set guifont=Monaco\ 14
elseif has("gui_macvim")
	set guifont=Monaco:h14
else
	set guifont=Monaco:h14
endif


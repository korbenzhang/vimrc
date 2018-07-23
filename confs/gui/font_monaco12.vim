
if !has("gui_running")
	finish
endif

" Set GUI Font
if IsInWinGui()
	set guifont=Monaco:h12
elseif has("gui_gtk")
	set guifont=Monaco\ 12
elseif has("gui_macvim")
	set guifont=Monaco:h12
else
	set guifont=Monaco:h12
endif


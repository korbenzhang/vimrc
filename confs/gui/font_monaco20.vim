
if !has("gui_running")
	finish
endif

" Set GUI Font
if IsInWinGui()
	set guifont=Monaco:h20
elseif has("gui_gtk")
	set guifont=Monaco\ 20
elseif has("gui_macvim")
	set guifont=Monaco:h20
else
	set guifont=Monaco:h20
endif


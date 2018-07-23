
if !has("gui_running")
	finish
endif

" Set GUI Font
if IsInWinGui()
	set guifont=Monaco:h16
elseif has("gui_gtk")
	set guifont=Monaco\ 16
elseif has("gui_macvim")
	set guifont=Monaco:h16
else
	set guifont=Monaco:h16
endif


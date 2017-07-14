
if !has("gui_running")
	finish
endif

" Set GUI Font
if IsInWinGui()
	set guifont=Consolas:h15
elseif has("gui_gtk2")
	set guifont=Consolas\ 15
elseif has("gui_macvim")
	set guifont=Consolas:h15
else
	set guifont=Consolas:h15
endif


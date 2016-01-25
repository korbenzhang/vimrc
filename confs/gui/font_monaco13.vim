
if !has("gui_running")
	finish
endif

" Set GUI Font
if has("gui_win32")
	set guifont=Monaco:h13:cANSI 
	set gfw=YaHei_Consolas_Hybrid:h13:cGB2312
elseif has("gui_gtk2")
	set guifont=Monaco\ 13
elseif has("gui_macvim")
	set guifont=Monaco:h13
else
	set guifont=Monaco:h13
endif


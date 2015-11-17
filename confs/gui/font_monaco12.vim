
if !has("gui_running")
	finish
endif

" Set GUI Font
if has("gui_win32")
	set guifont=Monaco:h12:cANSI 
	set gfw=YaHei_Consolas_Hybrid:h12:cGB2312
elseif has("gui_gtk2")
	set guifont=Monaco\ 12
elseif has("gui_macvim")
	set guifont=Monaco:h12
else
	set guifont=Monaco:h12
endif


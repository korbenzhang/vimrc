
if !has("gui_running")
	finish
endif

" Set GUI Font
if has("gui_win32")
	set guifont=Monaco:h11:cANSI 
	set gfw=Microsoft_YaHei_Mono:h11:cGB2312
elseif has("gui_gtk2")
	set guifont=Monaco\ 11
elseif has("gui_macvim")
	set guifont=Monaco:h11
else
	set guifont=Monaco:h11
endif


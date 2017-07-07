
if !has("gui_running")
	finish
endif

" Set GUI Font
if has("gui_win32")
	set guifont=Monaco:h18:cANSI 
	set gfw=Microsoft_YaHei_Mono:h18:cGB2312
elseif has("gui_gtk2")
	set guifont=Monaco\ 18
elseif has("gui_macvim")
	set guifont=Monaco:h18
else
	set guifont=Monaco:h18
endif



if !has("gui_running")
	finish
endif

" Set GUI Font
if has("gui_win32")
	set guifont=Consolas:h13
	set gfw=Microsoft_YaHei_Mono:h13:cGB2312
elseif has("gui_gtk2")
	set guifont=Consolas\ 13
elseif has("gui_macvim")
	set guifont=Consolas:h13
else
	set guifont=Consolas:h13
endif


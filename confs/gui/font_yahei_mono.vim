
if !has("gui_running")
	finish
endif

" Set GUI Font
if has("gui_win32")
	set guifont=Microsoft_Yahei_Mono:h16
	"set guifont=Consolas:h16
elseif has("gui_gtk")
	set guifont=Consolas\ 16
elseif has("gui_macvim")
	set guifont=Consolas:h16
else
	set guifont=Consolas:h16
endif


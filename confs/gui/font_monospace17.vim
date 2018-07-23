
if !has("gui_running")
	finish
endif

" Set GUI Font
if has("win32")
	set guifont=Monospace:h17 
elseif has("unix")
	set guifont=Monospace\ 17
endif


" Custom Vim Config
" =============================================
"source ~/.vim/confs/cursor.vim 	"change cursor when in insert mode.

"set timeoutlen=200

"colo molokai

if has("gui_running") && has("gui_win32")
	set guifont=Monaco:h13
endif

set laststatus=2
set showtabline=2

highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White

"let mapleader="<Space>"
"let g:mapleader="<Space>"

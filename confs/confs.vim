" Vim Configs

source ~/.vim/confs/options.vim			"options
source ~/.vim/confs/encoding.vim			"new encodings
source ~/.vim/confs/paste.vim				"paste

source ~/.vim/confs/syntax.vim			"syntax
source ~/.vim/confs/display.vim			"display
source ~/.vim/confs/highlight.vim    		"highlight
"source ~/.vim/confs/cursor_line.vim		"cursor line
"source ~/.vim/confs/tabline.vim			"tabline
source ~/.vim/confs/term.vim				"term

source ~/.vim/confs/backup.vim			"backup
source ~/.vim/confs/swap.vim				"swap
"source ~/.vim/confs/view.vim				"view

source ~/.vim/confs/iab.vim				"abb set
source ~/.vim/confs/mouse.vim				"mouse
source ~/.vim/confs/mswin.vim				"mswin
source ~/.vim/confs/fold.vim				"fold
source ~/.vim/confs/tags.vim				"tag for go and java
source ~/.vim/confs/complete.vim			"complete

if has("gui_running")
	source ~/.vim/confs/gui/gui_running.vim	"gui
endif

if has("win32")
	source ~/.vim/confs/win.vim			"win32
endif

if IsInDos()
	"source ~/.vim/confs/dos.vim			"dos
endif

"source ~/.vim/confs/mintty.vim			"mintty
source ~/.vim/confs/mabetle_func.vim		"mabetle functions
"source ~/.vim/confs/make_func.vim		"make func
"source ~/.vim/confs/make_onefile.vim		"make one file
source ~/.vim/confs/run.vim				"run
source ~/.vim/confs/golang.vim			"golang
source ~/.vim/confs/misc.vim				"misc
source ~/.vim/confs/au.vim				"auto filetype
source ~/.vim/confs/tab_indent.vim		"tab indent length
source ~/.vim/confs/esc_alt.vim			"esc alt
"source ~/.vim/confs/cursor.vim			"cursor in insert mode



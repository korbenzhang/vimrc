
" for gui
if has("gui_running")
	"解决consle输出乱码  
	language messages zh_CN.utf-8

	"source "$VIMRUNTIME/delmenu.vim"
	"source "$VIMRUNTIME/menu.vim"

	source ~/.vim/confs/menu_del.vim
	source ~/.vim/confs/menu.vim

endif


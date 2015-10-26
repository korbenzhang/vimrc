
if has("gui_running")
	let $LANG = 'en'  "set message language  
	set langmenu=en   "set menu's language of gvim. no spaces beside '='  '
	source $VIMRUNTIME/delmenu.vim
	source $VIMRUNTIME/menu.vim
endif


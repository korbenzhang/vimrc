
" see ~/.vim/confs/env_funcs.vim
" only work for linux and gnome vim 
if IsInUnixGui()
	autocmd GUIEnter * silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
endif

" main vim config file.
" author: korben
" ====================

"/uhome/.vim/confs/pluginrc/plug_pkgs.vim
"/uhome/.vim/extra/extra_conf.vim
"/uhome/.vim/extra/extra_env.vim
"/uhome/.vim/extra/extra_plugins.vim
"/uhome/.vim_extra_conf.vim
"/uhome/.vim_extra_env.vim
"/uhome/.vim_extra_plugins.vim


scriptencoding utf-8

set nocompatible

source /uhome/.vim/confs/vimrc.vim				" vimrc
source /uhome/.vim/confs/gvimrc.vim				" gvimrc

" Env
" ----
if filereadable(expand('/uhome/.vim/extra/extra_env.vim'))
	source /uhome/.vim/extra/extra_env.vim
endif

source /uhome/.vim/confs/env_funcs.vim			" Environment
source /uhome/.vim/confs/func_misc.vim			" Misc Functions
source /uhome/.vim/confs/func_golang.vim			" Go lang Functions

" Configs
" -------
source /uhome/.vim/confs/opt_misc.vim			" Options and misc
source /uhome/.vim/confs/encoding.vim			" Encodings
source /uhome/.vim/confs/xterm.vim				" Xterm
source /uhome/.vim/confs/complete.vim			" Complete
source /uhome/.vim/confs/gui/gui_running.vim		" GUI
source /uhome/.vim/confs/tab_indent2.vim			" Tab and Indent
source /uhome/.vim/confs/mswin.vim				" MS Win 
source /uhome/.vim/confs/mouse.vim				" Mouse
source /uhome/.vim/confs/au.vim					" AutoCmd
"source /uhome/.vim/confs/undo_backup.vim		" Undo And Backup
source /uhome/.vim/confs/nobackup_swap.vim		" No Undo Backup and Swap
source /uhome/.vim/confs/misc.vim				" Misc

" Keys
" ----
source /uhome/.vim/confs/keymap/vimrc.vim		" Edit and load .vim
source /uhome/.vim/confs/keymap/fn.vim		    " Fn
source /uhome/.vim/confs/keymap/arrow.vim		" Move cursor
source /uhome/.vim/confs/keymap/moveline.vim		" Move Lines
source /uhome/.vim/confs/keymap/indent.vim		" Indent
source /uhome/.vim/confs/keymap/tab.vim			" Tab
source /uhome/.vim/confs/keymap/tab_m.vim		" TabWindows Meta access
source /uhome/.vim/confs/keymap/tab_leader.vim	" TabWindows leader access
source /uhome/.vim/confs/keymap/win.vim			" Switch Windows
source /uhome/.vim/confs/keymap/keys_misc.vim	" Keys misc
source /uhome/.vim/confs/esc_alt.vim				" Make alt work
source /uhome/.vim/confs/nvim.vim				" for nvim
source /uhome/.vim/confs/todo.vim				" todo 
source /uhome/.vim/confs/terminal.vim			" terminal
source /uhome/.vim/confs/dict.vim			" terminal

" Plugins
" -------
source /uhome/.vim/confs/pluginrc/plug_pkgs.vim	" All plugins, use plug

" Extra Configs
" -------------
if filereadable(expand('/uhome/.vim/extra/extra_conf.vim'))
	source /uhome/.vim/extra/extra_conf.vim
endif

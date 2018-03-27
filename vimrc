" main vim config file.
" author: korben
" ====================
scriptencoding utf-8

set nocompatible

source ~/.vim/confs/vimrc.vim
source ~/.vim/confs/gvimrc.vim

" Env
" ----
if filereadable(expand('~/.vim/extra/extra_env.vim'))
	source ~/.vim/extra/extra_env.vim
endif
source ~/.vim/confs/env_funcs.vim		" Environment
source ~/.vim/confs/func_misc.vim		" Misc Functions

" Plugins
" -------
source ~/.vim/confs/pluginrc/plug_pkgs.vim	" All plugins, use plug

" Configs
" -------
source ~/.vim/confs/opt_misc.vim		" Options and misc
source ~/.vim/confs/encoding.vim		" Encodings
"source ~/.vim/confs/highlight.vim		" Color 
source ~/.vim/confs/xterm.vim			" Xterm
source ~/.vim/confs/complete.vim		" Complete
source ~/.vim/confs/gui/gui_running.vim " GUI
source ~/.vim/confs/tab_indent.vim		" Tab and Indent
source ~/.vim/confs/mswin.vim			" MS Win 
source ~/.vim/confs/mouse.vim			" Mouse
source ~/.vim/confs/au.vim				" AutoCmd
"source ~/.vim/confs/undo_backup.vim	" Undo And Backup
source ~/.vim/confs/nobackup_swap.vim	" No Undo Backup and Swap
source ~/.vim/confs/misc.vim			" Misc

" Keys
" ----
source ~/.vim/confs/keymap/vimrc.vim		" Edit and load .vim
source ~/.vim/confs/keymap/leader.vim		" Leader
source ~/.vim/confs/keymap/fn.vim		    " Fn
source ~/.vim/confs/keymap/arrow.vim		" Move cursor
source ~/.vim/confs/keymap/moveline.vim		" Move Lines
source ~/.vim/confs/keymap/indent.vim		" Indent
source ~/.vim/confs/keymap/tab.vim			" Tab
source ~/.vim/confs/keymap/tab_m.vim		" TabWindows Meta access
source ~/.vim/confs/keymap/tab_leader.vim	" TabWindows leader access
source ~/.vim/confs/keymap/win.vim			" Switch Windows
source ~/.vim/confs/keymap/keys_misc.vim	" Keys misc

source ~/.vim/confs/esc_alt.vim				" Make alt work
source ~/.vim/confs/nvim.vim				" for nvim

source ~/.vim/confs/todo.vim
source ~/.vim/confs/terminal.vim

" Extra Configs
" -------------
source ~/.vim/confs/extra_conf.vim			" Extra Config

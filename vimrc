" main vim config file.
" author: korben
" ====================

"$HOME/.vim/confs/pluginrc/plug_pkgs.vim
"$HOME/.vim/extra/extra_conf.vim
"$HOME/.vim/extra/extra_env.vim
"$HOME/.vim/extra/extra_plugins.vim
"$HOME/.vim_extra_conf.vim
"$HOME/.vim_extra_env.vim
"$HOME/.vim_extra_plugins.vim


scriptencoding utf-8

set nocompatible

source $HOME/.vim/confs/vimrc.vim				" vimrc
source $HOME/.vim/confs/gvimrc.vim				" gvimrc

" Env
" ----
if filereadable(expand('$HOME/.vim/extra/extra_env.vim'))
	source $HOME/.vim/extra/extra_env.vim
endif

source $HOME/.vim/confs/env_funcs.vim			" Environment
source $HOME/.vim/confs/func_misc.vim			" Misc Functions
source $HOME/.vim/confs/func_golang.vim			" Go lang Functions

" Configs
" -------
source $HOME/.vim/confs/opt_misc.vim			" Options and misc
source $HOME/.vim/confs/encoding.vim			" Encodings
source $HOME/.vim/confs/xterm.vim				" Xterm
source $HOME/.vim/confs/complete.vim			" Complete
source $HOME/.vim/confs/gui/gui_running.vim		" GUI
source $HOME/.vim/confs/tab_indent2.vim			" Tab and Indent
source $HOME/.vim/confs/mswin.vim				" MS Win 
source $HOME/.vim/confs/mouse.vim				" Mouse
source $HOME/.vim/confs/au.vim					" AutoCmd
"source $HOME/.vim/confs/undo_backup.vim		" Undo And Backup
source $HOME/.vim/confs/nobackup_swap.vim		" No Undo Backup and Swap
source $HOME/.vim/confs/misc.vim				" Misc

" Keys
" ----
source $HOME/.vim/confs/keymap/vimrc.vim		" Edit and load .vim
source $HOME/.vim/confs/keymap/fn.vim		    " Fn
source $HOME/.vim/confs/keymap/arrow.vim		" Move cursor
source $HOME/.vim/confs/keymap/moveline.vim		" Move Lines
source $HOME/.vim/confs/keymap/indent.vim		" Indent
"source $HOME/.vim/confs/keymap/tab.vim			" Tab
"source $HOME/.vim/confs/keymap/tab_m.vim		" TabWindows Meta access
source $HOME/.vim/confs/keymap/tab_leader.vim	" TabWindows leader access
source $HOME/.vim/confs/keymap/leader.vim	" TabWindows leader access
source $HOME/.vim/confs/keymap/win.vim			" Switch Windows
source $HOME/.vim/confs/keymap/keys_misc.vim	" Keys misc
source $HOME/.vim/confs/esc_alt.vim				" Make alt work
source $HOME/.vim/confs/nvim.vim				" for nvim
source $HOME/.vim/confs/todo.vim				" todo
source $HOME/.vim/confs/terminal.vim			" terminal
source $HOME/.vim/confs/dict.vim			" terminal

" Plugins
" -------
source $HOME/.vim/confs/pluginrc/plug_pkgs.vim	" All plugins, use plug

" Extra Configs
" -------------
if filereadable(expand('$HOME/.vim/extra/extra_conf.vim'))
	source $HOME/.vim/extra/extra_conf.vim
endif

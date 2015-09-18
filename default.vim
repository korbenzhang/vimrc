" =========================================================================
" Korben Vim Config File
" =========================================================================
set nocompatible
" ------------------------------------------------------------------------
" Env
source ~/.vim/confs/env_funcs.vim		" Environment
" ------------------------------------------------------------------------
" Plugins
source ~/.vim/pluginrc/plugin_misc.vim	" All plugins
" ------------------------------------------------------------------------
" Configs
source ~/.vim/confs/opt_misc.vim		" Options and misc
source ~/.vim/confs/encoding.vim		" Encodings
source ~/.vim/confs/highlight.vim		" Color 
source ~/.vim/confs/xterm.vim			" Xterm
source ~/.vim/confs/complete.vim		" Complete
source ~/.vim/confs/gui/gui_running.vim " GUI
source ~/.vim/confs/tab_indent.vim		" Tab and Indent
source ~/.vim/confs/mswin.vim			" MS Win 
source ~/.vim/confs/mouse.vim			" Mouse
source ~/.vim/confs/au.vim				" AutoCmd
source ~/.vim/confs/mabetle_func.vim	" Mabetle Functions
" ------------------------------------------------------------------------
" Keys
"source ~/.vim/confs/esc_alt.vim			" Make alt work
source ~/.vim/keymap/vimrc.vim			" Edit and load .vim
source ~/.vim/keymap/leader.vim			" Leader
source ~/.vim/keymap/arrow.vim			" Move cursor
source ~/.vim/keymap/moveline.vim		" Move Lines
source ~/.vim/keymap/indent.vim			" Indent
source ~/.vim/keymap/tab_m.vim			" TabWindows Meta access
source ~/.vim/keymap/tab_leader.vim		" TabWindows leader access
source ~/.vim/keymap/win.vim			" Switch Windows
source ~/.vim/keymap/keys_misc.vim		" keys misc
" ------------------------------------------------------------------------
" Extra Configs
source ~/.vim/confs/extra_conf.vim		" Extra config
" ------------------------------------------------------------------------
" Files Links
" ~/.vim/pluginrc/
" ~/.vim/confs/
" ~/.vim/keymap/
" ~/.vim_extra/
" 
" ~/.vim/pluginrc/plugin_misc.vim
" ~/.vim/pluginrc/golang.vim
" ~/.vim_extra/extra_env.vim
" ~/.vim_extra/extra_plugins.vim
" ~/.vim_extra/extra_conf.vim

" =========================================================================
" Korben Vim Config File
" =========================================================================
set nocompatible

" Env
" ------------------------------------------------------------------------
source ~/.vim/confs/env_funcs.vim

" Plugins
" ------------------------------------------------------------------------
source ~/.vim/pluginrc/plugin_misc.vim 

" Configs
" ------------------------------------------------------------------------
source ~/.vim/confs/opt_misc.vim		" Options and misc
source ~/.vim/confs/encoding.vim		" Encodings
source ~/.vim/confs/highlight.vim		" Color 
source ~/.vim/confs/xterm.vim			" Xterm
source ~/.vim/confs/complete.vim		" Complete
source ~/.vim/confs/gui/gui_running.vim "GUI
source ~/.vim/confs/tab_indent.vim		" Tab and Indent
source ~/.vim/confs/mswin.vim			" MS Win 
source ~/.vim/confs/mouse.vim			" Mouse
source ~/.vim/confs/au.vim				" AutoCmd
source ~/.vim/confs/mabetle_func.vim	" Mabetle Functions

" Keys
" ------------------------------------------------------------------------
source ~/.vim/confs/esc_alt.vim			" Make alt work
source ~/.vim/keymap/vimrc.vim			" Edit load .vim
source ~/.vim/keymap/leader.vim			" Leader
source ~/.vim/keymap/arrow.vim			" Move cursor
source ~/.vim/keymap/moveline.vim		" Move Lines
source ~/.vim/keymap/indent.vim			" Indent
source ~/.vim/keymap/tab_m.vim			" TabWindows M access
source ~/.vim/keymap/win.vim			" Switch Windows
source ~/.vim/keymap/keys_misc.vim		" keys misc

" Extra Configs
" ------------------------------------------------------------------------
source ~/.vim/conf/extra_conf.vim		" Extra config

" Files Links
" ------------------------------------------------------------------------
" ~/.vim/pluginrc/plugin_misc.vim
" ~/.vim_extra/env.vim
" ~/.vim_extra/plugins.vim
" ~/.vim_extra/conf.vim

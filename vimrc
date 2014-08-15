" ====================================================
" vim config file
" author: Korben Zhang
" ====================================================
set nocompatible
" ====================================================
source $HOME/.vim/env_vimrc							"set vim env
source $HOME/.vim/options_vimrc						"options
source $HOME/.vim/encoding_vimrc					"encodings
source $HOME/.vim/tab_indent_vimrc					"tab indent length
source $HOME/.vim/paste_vimrc						"paste
source $HOME/.vim/syntax_vimrc						"syntax
source $HOME/.vim/display_vimrc						"display
source $HOME/.vim/backup_vimrc						"backup
source $HOME/.vim/swap_vimrc						"swap
source $HOME/.vim/au_vimrc							"auto filetype
source $HOME/.vim/keymap_vimrc						"keys
source $HOME/.vim/keycmap_vimrc						"keys for cmap
source $HOME/.vim/keymap_alt_tabwin_vimrc			"keys for alt
source $HOME/.vim/keymap_malt_tabwin_vimrc			"keys for meta
"source $HOME/.vim/keymap_ctrl_tabwin_vimrc			"keys for ctrl
source $HOME/.vim/keymap_leader_tabwin_vimrc		"keys for leader
source $HOME/.vim/iab_vimrc							"abb set
source $HOME/.vim/mouse_vimrc						"mouse
"source $HOME/.vim/statusline_vimrc					"statusline
source $HOME/.vim/mswin.vim							"mswin
source $HOME/.vim/highlight_vimrc					"highlight
source $HOME/.vim/misc_vimrc						"misc
source $HOME/.vim/fold_vimrc						"fold
source $HOME/.vim/tags_vimrc						"tag for go and java
source $HOME/.vim/complete_vimrc					"complete
source $HOME/.vim/omnifunc_vimrc					"omni
source $HOME/.vim/gui_running_vimrc					"gui
source $HOME/.vim/win32_vimrc						"win32
source $HOME/.vim/mabetle_func_vimrc				"mabetle functions
source $HOME/.vim/make_func_vimrc					"mabetle functions
source $HOME/.vim/make_onefile_vimrc				"mabetle functions
source $HOME/.vim/run_vimrc							"run
source $HOME/.vim/golang_vimrc						"golang

" Plugins settings
" ====================================================
source $HOME/.vim/pluginrc/omni_complete_vimrc
source $HOME/.vim/pluginrc/supertab_vimrc
source $HOME/.vim/pluginrc/tagbar_vimrc
source $HOME/.vim/pluginrc/snipmate_vimrc
source $HOME/.vim/pluginrc/nerdtree_vimrc
source $HOME/.vim/pluginrc/autocomplpop_vimrc
"source $HOME/.vim/pluginrc/closetag_vimrc
"source $HOME/.vim/pluginrc/powerline_vimrc
"source $HOME/.vim/pluginrc/winmanager_vimrc
"source $HOME/.vim/pluginrc/rsense_vimrc
"source $HOME/.vim/pluginrc/vimwiki_vimrc
"source $HOME/.vim/pluginrc/tex_vimrc
"source $HOME/.vim/pluginrc/template_load_vimrc
"source $HOME/.vim/pluginrc/minibufexplore_vimrc
"source $HOME/.vim/pluginrc/lookupfile_vimrc
"source $HOME/.vim/pluginrc/expl_vimrc
"source $HOME/.vim/pluginrc/doxygen_vimrc
"source $HOME/.vim/pluginrc/bufexpl_vimrc
"source $HOME/.vim/pluginrc/async_vimrc

"Vundle support
" ====================================================
source $HOME/.vim/init_vundle_vimrc

" some set here directly
" ====================================================
"set noautochdir
set nofoldenable
let g:vim_markdown_folding_disabled=1


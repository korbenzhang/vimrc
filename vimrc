" ====================================================
" vim config file. vim配置文件
" author: Korben Zhang
" ====================================================
set nocompatible

"Vundle support
" ----------------------------------------------------
source $HOME/.vim/init_vundle_vimrc
source $HOME/.vim/used_bundles_vimrc

" Plugins and settings
" ----------------------------------------------------
source $HOME/.vim/pluginrc/golang_vimrc
source $HOME/.vim/pluginrc/compl_vimrc
source $HOME/.vim/pluginrc/supertab_vimrc
source $HOME/.vim/pluginrc/tagbar_vimrc
source $HOME/.vim/pluginrc/snipmate_vimrc
source $HOME/.vim/pluginrc/nerdtree_vimrc
source $HOME/.vim/pluginrc/autocomplpop_vimrc
source $HOME/.vim/pluginrc/colorscheme_vimrc
source $HOME/.vim/pluginrc/statusline_vimrc
source $HOME/.vim/pluginrc/comment_vimrc
source $HOME/.vim/pluginrc/git_vimrc
source $HOME/.vim/pluginrc/markdown_vimrc
source $HOME/.vim/pluginrc/xml_vimrc
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

source $HOME/.vim/vundle_end_vimrc

" Options and Settings
" ----------------------------------------------------
source $HOME/.vim/env_vimrc							"set vim env
source $HOME/.vim/options_vimrc						"options
source $HOME/.vim/encoding_vimrc					"new encodings
source $HOME/.vim/tab_indent_vimrc					"tab indent length
source $HOME/.vim/paste_vimrc						"paste
source $HOME/.vim/syntax_vimrc						"syntax
source $HOME/.vim/display_vimrc						"display
source $HOME/.vim/term_vimrc						"term
source $HOME/.vim/backup_vimrc						"backup
source $HOME/.vim/swap_vimrc						"swap
source $HOME/.vim/au_vimrc							"auto filetype
source $HOME/.vim/keymap_vimrc						"keys
source $HOME/.vim/iab_vimrc							"abb set
source $HOME/.vim/mouse_vimrc						"mouse
"source $HOME/.vim/statusline_vimrc					"statusline
source $HOME/.vim/mswin.vim							"mswin
source $HOME/.vim/highlight_vimrc					"highlight
source $HOME/.vim/fold_vimrc						"fold
source $HOME/.vim/tags_vimrc						"tag for go and java
source $HOME/.vim/complete_vimrc					"complete
"source $HOME/.vim/omnifunc_vimrc					"omni
source $HOME/.vim/gui_running_vimrc					"gui
source $HOME/.vim/win32_vimrc						"win32
source $HOME/.vim/dos_vimrc							"dos
source $HOME/.vim/mabetle_func_vimrc				"mabetle functions
source $HOME/.vim/make_func_vimrc					"mabetle functions
source $HOME/.vim/make_onefile_vimrc				"mabetle functions
source $HOME/.vim/run_vimrc							"run
source $HOME/.vim/golang_vimrc						"golang
source $HOME/.vim/misc_vimrc						"misc

" ====================================================
" vim config file. vim配置文件
" author: Korben Zhang
" ====================================================
set nocompatible

"Vundle support
" ----------------------------------------------------
source ~/.vim/vundle_install_vimrc
source ~/.vim/init_vundle_vimrc

" Plugins and settings
" ----------------------------------------------------
source ~/.vim/pluginrc/plugins_vimrc
source ~/.vim/pluginrc/golang_vimrc

source ~/.vim/pluginrc/compl_vimrc
source ~/.vim/pluginrc/autocomplpop_vimrc
"source ~/.vim/pluginrc/neocomplete_vimrc

source ~/.vim/pluginrc/supertab_vimrc
source ~/.vim/pluginrc/tagbar_vimrc

"source ~/.vim/pluginrc/neosnippet_vimrc
source ~/.vim/pluginrc/utlisnips_vimrc
"source ~/.vim/pluginrc/snipmate_vimrc
"source ~/.vim/pluginrc/snipmate_old_vimrc

source ~/.vim/pluginrc/nerdtree_vimrc
source ~/.vim/pluginrc/colorscheme_vimrc
source ~/.vim/pluginrc/statusline_vimrc
source ~/.vim/pluginrc/comment_vimrc
source ~/.vim/pluginrc/git_vimrc
source ~/.vim/pluginrc/markdown_vimrc
source ~/.vim/pluginrc/xml_vimrc

" experimental
if filereadable(expand('~/.vim/expr_vimrc'))
	source ~/.vim/expr_vimrc
endif

source ~/.vim/vundle_end_vimrc

" Options and Settings
" ----------------------------------------------------
source ~/.vim/env_vimrc							"set vim env
source ~/.vim/options_vimrc						"options
source ~/.vim/encoding_vimrc					"new encodings
source ~/.vim/paste_vimrc						"paste

source ~/.vim/syntax_vimrc						"syntax
source ~/.vim/display_vimrc						"display
source ~/.vim/highlight_vimrc					"highlight
source ~/.vim/tabline_vimrc						"tabline
source ~/.vim/term_vimrc						"term

source ~/.vim/backup_vimrc						"backup
source ~/.vim/swap_vimrc						"swap
source ~/.vim/view_vimrc						"swap

source ~/.vim/keymap_vimrc						"keys
source ~/.vim/iab_vimrc							"abb set
source ~/.vim/mouse_vimrc						"mouse
source ~/.vim/mswin.vim							"mswin
source ~/.vim/fold_vimrc						"fold
source ~/.vim/tags_vimrc						"tag for go and java
source ~/.vim/complete_vimrc					"complete
source ~/.vim/gui_running_vimrc					"gui
source ~/.vim/win32_vimrc						"win32
source ~/.vim/dos_vimrc							"dos
source ~/.vim/mintty_vimrc						"mintty
source ~/.vim/mabetle_func_vimrc				"mabetle functions
source ~/.vim/make_func_vimrc					"mabetle functions
source ~/.vim/make_onefile_vimrc				"mabetle functions
source ~/.vim/run_vimrc							"run
source ~/.vim/golang_vimrc						"golang
source ~/.vim/misc_vimrc						"misc
source ~/.vim/au_vimrc							"auto filetype
source ~/.vim/tab_indent_vimrc					"tab indent length
"source ~/.vim/cursor_vimrc						"change cursor when in insert mode.

" experimental for override vim settings.
if filereadable(expand('~/.vim/expr_override_vimrc'))
	source ~/.vim/expr_override_vimrc
endif



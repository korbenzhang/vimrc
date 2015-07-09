" VIM config file. vim配置文件
" author: Korben Zhang
" ====================================================

set nocompatible

let mapleader = ","
let g:mapleader = ","

source ~/.vim/confs/env_vimrc
source ~/.vim/confs/env_funcs_vimrc

" install some vim depends.
"source ~/.vim/confs/install_vimrc

" Vundle support
source ~/.vim/confs/vundle_install_vimrc
source ~/.vim/confs/init_vundle_vimrc

" Plugins and settings
source ~/.vim/pluginrc/plugins_vimrc
source ~/.vim/pluginrc/golang_vimrc

"source ~/.vim/pluginrc/compl_vimrc

source ~/.vim/pluginrc/tagbar_vimrc

" Snippets, utlisnips / neosnippet / snipmate
if IsHasPython()
	source ~/.vim/pluginrc/utlisnips_vimrc
	"source ~/.vim/pluginrc/neosnippet_vimrc
else
	"source ~/.vim/pluginrc/snipmate_vimrc
	source ~/.vim/pluginrc/snipmate_old_vimrc
endif

" Complete, YCM / neocomplete /
" YCM nedd python, YCM not work properly in Windows
" NeoComplete need lua
let g:vimrc#completer="unknown"
if IsHasPython() && !IsInWin()
	" YCM need install and compile first.
	" Not work for Windows.
	source ~/.vim/pluginrc/ycm_vimrc
	let g:vimrc#completer="YCM"
elseif IsHasLua()
	" No Python
	" neocomplete need lua
	source ~/.vim/pluginrc/neocomplete_vimrc
	let g:vimrc#completer="neocomplete"
else
	" No Python and Lua
	"source ~/.vim/pluginrc/supertab_vimrc
	"source ~/.vim/pluginrc/autocomplpop_vimrc
endif

source ~/.vim/pluginrc/nerdtree_vimrc
"source ~/.vim/pluginrc/colorscheme_vimrc
"source ~/.vim/pluginrc/statusline_vimrc
source ~/.vim/pluginrc/comment_vimrc
"source ~/.vim/pluginrc/git_vimrc
"source ~/.vim/pluginrc/markdown_vimrc
source ~/.vim/pluginrc/xml_vimrc

" Extra Plugins
if filereadable(expand('~/.vim_extra/plugins_vimrc'))
	source ~/.vim_extra/plugins_vimrc
endif

source ~/.vim/confs/vundle_end_vimrc

" Options and Settings
source ~/.vim/confs/options_vimrc			"options
source ~/.vim/confs/encoding_vimrc			"new encodings
source ~/.vim/confs/paste_vimrc				"paste

source ~/.vim/confs/syntax_vimrc			"syntax
source ~/.vim/confs/display_vimrc			"display
source ~/.vim/confs/highlight_vimrc    		"highlight
"source ~/.vim/confs/cursor_line_vimrc		"cursor line
"source ~/.vim/confs/tabline_vimrc			"tabline
source ~/.vim/confs/term_vimrc				"term

source ~/.vim/confs/backup_vimrc			"backup
source ~/.vim/confs/swap_vimrc				"swap
source ~/.vim/confs/view_vimrc				"swap

source ~/.vim/keymap/all_vimrc				"keys
source ~/.vim/confs/iab_vimrc				"abb set
source ~/.vim/confs/mouse_vimrc				"mouse
source ~/.vim/confs/mswin.vim				"mswin
source ~/.vim/confs/fold_vimrc				"fold
source ~/.vim/confs/tags_vimrc				"tag for go and java
source ~/.vim/confs/complete_vimrc			"complete

if has("gui_running")
	source ~/.vim/confs/gui/gui_running_vimrc	"gui
endif

if has("win32")
	source ~/.vim/confs/win32_vimrc			"win32
endif

if IsInDos()
	"source ~/.vim/confs/dos_vimrc			"dos
endif

"source ~/.vim/confs/mintty_vimrc			"mintty
source ~/.vim/confs/mabetle_func_vimrc		"mabetle functions
"source ~/.vim/confs/make_func_vimrc		"make func
"source ~/.vim/confs/make_onefile_vimrc		"make one file
source ~/.vim/confs/run_vimrc				"run
source ~/.vim/confs/golang_vimrc			"golang
source ~/.vim/confs/misc_vimrc				"misc
source ~/.vim/confs/au_vimrc				"auto filetype
source ~/.vim/confs/tab_indent_vimrc		"tab indent length
source ~/.vim/confs/esc_alt_vimrc			"esc alt
"source ~/.vim/confs/cursor_vimrc			"cursor in insert mode

" Extra for override vim settings.
if filereadable(expand('~/.vim_extra/conf_vimrc'))
	source ~/.vim_extra/conf_vimrc
endif

" GOTO
" ~/.vim_extra/plugins_vimrc
" ~/.vim_extra/conf_vimrc

" ~/.vim/example_extra/plugins_vimrc
" ~/.vim/example_extra/conf_vimrc


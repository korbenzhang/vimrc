" VIM config file. vim配置文件
" author: Korben Zhang
" ====================================================

set nocompatible

let mapleader = ","
let g:mapleader = ","

source ~/.vim/env_vimrc
source ~/.vim/env_funcs_vimrc

" install some vim depends.
"source ~/.vim/install_vimrc

" Vundle support
source ~/.vim/vundle_install_vimrc
source ~/.vim/init_vundle_vimrc

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

source ~/.vim/vundle_end_vimrc

" Options and Settings
source ~/.vim/options_vimrc				"options
source ~/.vim/encoding_vimrc			"new encodings
source ~/.vim/paste_vimrc				"paste

source ~/.vim/syntax_vimrc				"syntax
source ~/.vim/display_vimrc				"display
source ~/.vim/highlight_vimrc    		"highlight
"source ~/.vim/cursor_line_vimrc		"cursor line
"source ~/.vim/tabline_vimrc			"tabline
source ~/.vim/term_vimrc				"term

source ~/.vim/backup_vimrc				"backup
source ~/.vim/swap_vimrc				"swap
source ~/.vim/view_vimrc				"swap

source ~/.vim/keymap/all_vimrc			"keys
source ~/.vim/iab_vimrc					"abb set
source ~/.vim/mouse_vimrc				"mouse
source ~/.vim/mswin.vim					"mswin
source ~/.vim/fold_vimrc				"fold
source ~/.vim/tags_vimrc				"tag for go and java
source ~/.vim/complete_vimrc			"complete

if has("gui_running")
	source ~/.vim/gui/gui_running_vimrc	"gui
endif

if has("win32")
	source ~/.vim/win32_vimrc			"win32
endif

if IsInDos()
	"source ~/.vim/dos_vimrc			"dos
endif

"source ~/.vim/mintty_vimrc				"mintty
source ~/.vim/mabetle_func_vimrc		"mabetle functions
"source ~/.vim/make_func_vimrc			"make func
"source ~/.vim/make_onefile_vimrc		"make one file
source ~/.vim/run_vimrc					"run
source ~/.vim/golang_vimrc				"golang
source ~/.vim/misc_vimrc				"misc
source ~/.vim/au_vimrc					"auto filetype
source ~/.vim/tab_indent_vimrc			"tab indent length
source ~/.vim/esc_alt_vimrc				"esc alt
"source ~/.vim/cursor_vimrc				"cursor in insert mode

" Extra for override vim settings.
if filereadable(expand('~/.vim_extra/conf_vimrc'))
	source ~/.vim_extra/conf_vimrc
endif

" GOTO
" ~/.vim_extra/plugins_vimrc
" ~/.vim_extra/conf_vimrc
" ~/.vim/example_extra/plugins_vimrc
" ~/.vim/example_extra/conf_vimrc


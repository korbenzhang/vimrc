"======================
" vim config file
" author: Korben Zhang
"======================

set nocompatible

source $HOME/.vim/env_vimrc

let mapleader = ","
let g:mapleader = ","

" vundle support
" ========================
filetype on
filetype plugin on
filetype indent on


let iCanHazVundle=1

let vundle_readme=expand('~/.vim/bundle/vundle/README.md')

if !filereadable(vundle_readme)
	echo "Installing Vundle.."
	echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

set rtp+=$HOME/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

"source $HOME/.vim/all_bundles_vimrc
source $HOME/.vim/used_bundles_vimrc
source $HOME/.vim/os_vimrc

source $HOME/.vim/tags_vimrc

source $HOME/.vim/ruby_bundles_vimrc
source $HOME/.vim/snip_bundles_vimrc
"source $HOME/.vim/ulti_snips_vimrc

source $HOME/.vim/auto_pair_vimrc
source $HOME/.vim/complete_vimrc

source $HOME/.vim/options_vimrc
source $HOME/.vim/encoding_vimrc
source $HOME/.vim/tab_indent_vimrc
source $HOME/.vim/backup_vimrc
source $HOME/.vim/swap_vimrc
source $HOME/.vim/au_vimrc
source $HOME/.vim/keymap_vimrc
source $HOME/.vim/iab_vimrc
source $HOME/.vim/fold_vimrc
source $HOME/.vim/mouse_vimrc
source $HOME/.vim/paste_vimrc
source $HOME/.vim/syntax_vimrc
source $HOME/.vim/display_vimrc
source $HOME/.vim/statusline_vimrc
source $HOME/.vim/plugin_vimrc

source $HOME/.vim/mabetle_func_vimrc

source $HOME/.vim/run_vimrc

source $HOME/.vim/golang_vimrc


" some gui features
if has("gui_running")
	source $HOME/.vim/gui_running_vimrc
endif

" some windows features
if has("win32")
    source $HOME/.vim/win32_vimrc
endif

" mouse behave
behave mswin

" modify mswin.vim
source $HOME/.vim/mswin.vim

source $HOME/.vim/misc_vimrc

source $HOME/.vim/omnifunc_vimrc
source $HOME/.vim/plugin_omni_complete_vimrc
source $HOME/.vim/plugin_supertab_vimrc
source $HOME/.vim/plugin_tlist_vimrc
source $HOME/.vim/plugin_powerline_vimrc

"source $HOME/.vim/plugin_rsense_vimrc


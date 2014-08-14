" vim config file
" author: Korben Zhang
"======================
set nocompatible
filetype off

source $HOME/.vim/env_vimrc

" if not have vundle, get one
source $HOME/.vim/init_vundle_vimrc

" vundle support
" ========================
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

source $HOME/.vim/used_bundles_vimrc

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

source $HOME/.vim/tags_vimrc
source $HOME/.vim/options_vimrc
source $HOME/.vim/encoding_vimrc
source $HOME/.vim/tab_indent_vimrc
source $HOME/.vim/backup_vimrc
source $HOME/.vim/swap_vimrc
source $HOME/.vim/au_vimrc
source $HOME/.vim/keymap_vimrc
source $HOME/.vim/keycmap_vimrc
source $HOME/.vim/keymap_alt_tabwin_vimrc
source $HOME/.vim/keymap_malt_tabwin_vimrc
"source $HOME/.vim/keymap_ctrl_tabwin_vimrc
source $HOME/.vim/keymap_leader_tabwin_vimrc
source $HOME/.vim/iab_vimrc
source $HOME/.vim/fold_vimrc
source $HOME/.vim/mouse_vimrc
source $HOME/.vim/paste_vimrc
source $HOME/.vim/syntax_vimrc
source $HOME/.vim/display_vimrc
source $HOME/.vim/complete_vimrc
"source $HOME/.vim/plugin_vimrc
source $HOME/.vim/mabetle_func_vimrc
source $HOME/.vim/run_vimrc
source $HOME/.vim/golang_vimrc

" some gui features
source $HOME/.vim/gui_running_vimrc

" some windows features
source $HOME/.vim/win32_vimrc

" status line
"source $HOME/.vim/statusline_vimrc

" mouse behave
behave mswin

" modify mswin.vim
source $HOME/.vim/mswin.vim
source $HOME/.vim/highlight_vimrc
source $HOME/.vim/misc_vimrc

source $HOME/.vim/omnifunc_vimrc
source $HOME/.vim/plugin_omni_complete_vimrc

source $HOME/.vim/plugin_supertab_vimrc
source $HOME/.vim/plugin_tlist_vimrc
"source $HOME/.vim/plugin_powerline_vimrc
source $HOME/.vim/plugin_closetag_vimrc
"source $HOME/.vim/plugin_winmanager_vimrc
source $HOME/.vim/plugin_snipmate_vimrc
"source $HOME/.vim/plugin_rsense_vimrc
"source $HOME/.vim/plugin_vimwiki_vimrc
"source $HOME/.vim/plugin_tbar_vimrc
"source $HOME/.vim/plugin_tex_vimrc
"source $HOME/.vim/plugin_template_load_vimrc
source $HOME/.vim/plugin_nerdtree_vimrc
"source $HOME/.vim/plugin_minibufexplore_vimrc
"source $HOME/.vim/plugin_lookupfile_vimrc
"source $HOME/.vim/plugin_expl_vimrc
"source $HOME/.vim/plugin_doxygen_vimrc
"source $HOME/.vim/plugin_bufexpl_vimrc
"source $HOME/.vim/plugin_async_vimrc

" install plug with shell
" ~/.vim/bin/plug-install.sh

" source ~/.vim/confs/init_plug.vim
source ~/.vim/autoload/plug.vim

call plug#begin('~/.vim/bundle')

Plug 'junegunn/vim-plug'
Plug 'vim-scripts/auto_mkdir'
Plug 'vim-scripts/SudoEdit.vim'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-endwise'
Plug 'SirVer/ultisnips'
source ~/.vim/pluginrc/utlisnips_conf.vim
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdcommenter'
source ~/.vim/pluginrc/nerdcommenter_conf.vim
Plug 'scrooloose/nerdtree'
source ~/.vim/pluginrc/nerdtree_conf.vim
Plug 'Lokaltog/vim-easymotion'
"source ~/.vim/pluginrc/easymotion.vim
source ~/.vim/pluginrc/easymotion_conf.vim
Plug 'fatih/vim-go'
source ~/.vim/pluginrc/vim_go_conf.vim
Plug 'pbrisbin/vim-mkdir'
Plug 'now/vim-sudo'
Plug 'majutsushi/tagbar'
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'
Plug 'terryma/vim-multiple-cursors'
source ~/.vim/pluginrc/multiple_cursor_conf.vim
Plug 'othree/html5.vim'
Plug 'tpope/vim-markdown'
Plug 'pangloss/vim-javascript'
Plug 'editorconfig/editorconfig-vim'
"Plug 'airblade/vim-gitgutter'
"source ~/.vim/pluginrc/gitgutter_conf.vim
"Plug 'tpope/vim-fugitive'
"source ~/.vim/pluginrc/fugitive_conf.vim
Plug 'mileszs/ack.vim'

Plug 'tomasr/molokai'
Plug 'gosukiwi/vim-atom-dark'
Plug 'dracula/vim'

Plug 'junegunn/fzf', { 'do': './install --all' }
" ~/.vim/bundle/fzf.vim
Plug 'junegunn/fzf.vim'

"Plug 'ctrlpvim/ctrlp.vim'
"source ~/.vim/pluginrc/ctrlp_conf.vim

Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
source ~/.vim/pluginrc/ycm_conf.vim
"Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale' "Asynchronous Lint Engine
"Plug 'Shougo/vimproc.vim', { 'do': 'make' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Extra Plugins
if filereadable(expand('~/.vim/extra/extra_plugins.vim'))
	source ~/.vim/extra/extra_plugins.vim
endif

" Initialize plugin system
call plug#end()


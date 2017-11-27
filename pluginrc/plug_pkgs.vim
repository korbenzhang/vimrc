
" install plug with shell
" ~/.vim/bin/plug-install.sh

" source ~/.vim/confs/init_plug.vim
source ~/.vim/autoload/plug.vim

"call plug#begin('~/.vim/plugged')
call plug#begin('~/.vim/bundle')

Plug 'junegunn/vim-plug'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-endwise'
Plug 'SirVer/ultisnips'
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdcommenter'
source ~/.vim/pluginrc/plugins_conf.vim
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Lokaltog/vim-easymotion'
Plug 'fatih/vim-go'
source ~/.vim/pluginrc/vim_go_conf.vim
Plug 'pbrisbin/vim-mkdir'
Plug 'now/vim-sudo'
Plug 'majutsushi/tagbar'
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'
Plug 'terryma/vim-multiple-cursors'
Plug 'othree/html5.vim'
Plug 'tpope/vim-markdown'
Plug 'pangloss/vim-javascript'
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'mileszs/ack.vim'

Plug 'tomasr/molokai'
Plug 'gosukiwi/vim-atom-dark'
Plug 'dracula/vim'

Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'ctrlpvim/ctrlp.vim'
source ~/.vim/pluginrc/ctrlp_conf.vim

Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
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


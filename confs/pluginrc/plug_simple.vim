" to speed up vim
" only include very simple basic vim plugins.
source $HOME/.vim/confs/plug.vim
call plug#begin('$HOME/.vim/bundle')

Plug 'junegunn/vim-plug'
Plug 'pbrisbin/vim-mkdir'
Plug 'now/vim-sudo'
Plug 'tpope/vim-endwise'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdcommenter'
Plug 'tomasr/molokai'

" Extra Plugins
if filereadable(expand('$HOME/.vim/extra/extra_plugins.vim'))
	source $HOME/.vim/extra/extra_plugins.vim
endif

" Initialize plugin system
call plug#end()


"config plug


let g:netrw_liststyle = 3

" if put plug.vim in $HOME/.vim/autoload dir,
" not need following line.
source $HOME/.vim/confs/plug.vim

"use $HOME/.vim/bundle as plugins dir
"so can work with Bundle
call plug#begin('$HOME/.vim/bundle')

"see $HOME/.vim/bundle/vim-plug
Plug 'junegunn/vim-plug'

"Plug '$HOME/.vim/confs/myplug'

"basic vim extends
"Plug 'DataWraith/auto_mkdir'
Plug 'pbrisbin/vim-mkdir'

if IsInUnix()
	Plug 'chrisbra/SudoEdit.vim'
endif

Plug 'tpope/vim-endwise'

Plug 'raimondi/delimitmate'
"Plug 'gorodinskiy/vim-coloresque'

"complete
source $HOME/.vim/confs/pluginrc/utlisnips.vim
Plug 'honza/vim-snippets'

"lang extends
" html
Plug 'mattn/emmet-vim'

Plug 'othree/html5.vim'

" Extra Plugins
if filereadable(expand('$HOME/.vim/extra/extra_plugins.vim'))
	source $HOME/.vim/extra/extra_plugins.vim
endif

" Initialize plugin system
call plug#end()

"source $HOME/.vim/confs/plug_ext.vim

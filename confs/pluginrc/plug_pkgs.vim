"config plug


let g:netrw_liststyle = 3

" if put plug.vim in ~/.vim/autoload dir, 
" not need following line.
source ~/.vim/confs/plug.vim

"use ~/.vim/bundle as plugins dir
"so can work with Bundle
call plug#begin('~/.vim/bundle')

"see ~/.vim/bundle/vim-plug
Plug 'junegunn/vim-plug'

"Plug '~/.vim/confs/myplug'

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
source ~/.vim/confs/pluginrc/utlisnips.vim
Plug 'honza/vim-snippets'

"lang extends
" html
"Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'

" Extra Plugins
if filereadable(expand('~/.vim/extra/extra_plugins.vim'))
	source ~/.vim/extra/extra_plugins.vim
endif

" Initialize plugin system
call plug#end()

"source ~/.vim/confs/plug_ext.vim


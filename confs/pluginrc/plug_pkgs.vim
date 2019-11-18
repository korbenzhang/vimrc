"config plug


let g:netrw_liststyle = 3

" if put plug.vim in /uhome/.vim/autoload dir, 
" not need following line.
source /uhome/.vim/confs/plug.vim

"use /uhome/.vim/bundle as plugins dir
"so can work with Bundle
call plug#begin('/uhome/.vim/bundle')

"see /uhome/.vim/bundle/vim-plug
Plug 'junegunn/vim-plug'

"Plug '/uhome/.vim/confs/myplug'

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
source /uhome/.vim/confs/pluginrc/utlisnips.vim
Plug 'honza/vim-snippets'

"lang extends
" html
"Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'

" Extra Plugins
if filereadable(expand('/uhome/.vim/extra/extra_plugins.vim'))
	source /uhome/.vim/extra/extra_plugins.vim
endif

" Initialize plugin system
call plug#end()

"source /uhome/.vim/confs/plug_ext.vim


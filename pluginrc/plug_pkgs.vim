"config plug

source ~/.vim/autoload/plug.vim

call plug#begin('~/.vim/bundle')

Plug 'junegunn/vim-plug'

"basic vim extends
"Plug 'DataWraith/auto_mkdir'
Plug 'pbrisbin/vim-mkdir'

if IsInUnix()
	Plug 'chrisbra/SudoEdit.vim'
endif

Plug 'tpope/vim-endwise'
Plug 'raimondi/delimitmate'
Plug 'gorodinskiy/vim-coloresque'

"complete
source ~/.vim/pluginrc/utlisnips.vim
Plug 'honza/vim-snippets'

Plug 'majutsushi/tagbar'

"lang extends
" html
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-markdown'

"golang
source ~/.vim/pluginrc/golang.vim

" Extra Plugins
if filereadable(expand('~/.vim/extra/extra_plugins.vim'))
	source ~/.vim/extra/extra_plugins.vim
endif

" Initialize plugin system
call plug#end()

source ~/.vim/confs/plug_ext.vim


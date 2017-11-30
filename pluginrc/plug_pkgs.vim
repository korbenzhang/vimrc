" install plug with shell
" ~/.vim/bin/plug-install.sh

" source ~/.vim/confs/init_plug.vim
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
Plug 'SirVer/ultisnips'
source ~/.vim/pluginrc/utlisnips_conf.vim
Plug 'honza/vim-snippets'

source ~/.vim/pluginrc/comment.vim

Plug 'majutsushi/tagbar'

" colorscheme
Plug 'tomasr/molokai'

"status line
Plug 'itchyny/lightline.vim'

" misc
source ~/.vim/pluginrc/terminal.vim

"lang extends
" html
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-markdown'
Plug 'ternjs/tern_for_vim'

"golang
Plug 'fatih/vim-go'
source ~/.vim/pluginrc/vim_go_conf.vim

"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Extra Plugins
if filereadable(expand('~/.vim/extra/extra_plugins.vim'))
	source ~/.vim/extra/extra_plugins.vim
endif

" Initialize plugin system
call plug#end()

source ~/.vim/confs/plug_ext.vim



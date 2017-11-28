" install plug with shell
" ~/.vim/bin/plug-install.sh

" source ~/.vim/confs/init_plug.vim
source ~/.vim/autoload/plug.vim

call plug#begin('~/.vim/bundle')

Plug 'junegunn/vim-plug'

"basic vim extends

"Plug 'vim-scripts/SudoEdit.vim'
Plug 'chrisbra/SudoEdit.vim'
"https://github.com/DataWraith/auto_mkdir

"Plug 'DataWraith/auto_mkdir'
Plug 'pbrisbin/vim-mkdir'
Plug 'now/vim-sudo'

Plug 'scrooloose/nerdtree'
source ~/.vim/pluginrc/nerdtree_conf.vim
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'raimondi/delimitmate'
Plug 'terryma/vim-expand-region'
source ~/.vim/pluginrc/expand_region_conf.vim
Plug 'gorodinskiy/vim-coloresque'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-sneak'
Plug 'terryma/vim-smooth-scroll'

"complete
Plug 'SirVer/ultisnips'
source ~/.vim/pluginrc/utlisnips_conf.vim
Plug 'honza/vim-snippets'

source ~/.vim/pluginrc/ycm.vim

Plug 'tpope/vim-sensible'

"Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdcommenter'
source ~/.vim/pluginrc/nerdcommenter_conf.vim

Plug 'Lokaltog/vim-easymotion'
source ~/.vim/pluginrc/easymotion_conf.vim

Plug 'terryma/vim-multiple-cursors'
source ~/.vim/pluginrc/multiple_cursor_conf.vim

Plug 'majutsushi/tagbar'

Plug 'godlygeek/tabular'

" colorscheme
Plug 'tomasr/molokai'
Plug 'gosukiwi/vim-atom-dark'
Plug 'dracula/vim'

"status line
Plug 'itchyny/lightline.vim'

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


"Plug 'editorconfig/editorconfig-vim'

"git 
"Plug 'airblade/vim-gitgutter'
"source ~/.vim/pluginrc/gitgutter_conf.vim
"Plug 'tpope/vim-fugitive'
"source ~/.vim/pluginrc/fugitive_conf.vim


Plug 'mileszs/ack.vim'


" open file 
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim' " fzf
source ~/.vim/pluginrc/fzf_conf.vim

" syntax check.
Plug 'w0rp/ale' "Asynchronous Lint Engine

"Asynchronous
Plug 'tpope/vim-dispatch'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

"Plug 'sheerun/vim-polyglot'


" Extra Plugins
if filereadable(expand('~/.vim/extra/extra_plugins.vim'))
	source ~/.vim/extra/extra_plugins.vim
endif

" Initialize plugin system
call plug#end()

source ~/.vim/confs/plug_ext.vim



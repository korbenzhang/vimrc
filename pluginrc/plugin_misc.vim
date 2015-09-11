" Vundle
" --------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
filetype plugin indent off    " required
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'auto_mkdir'
Plugin 'Emmet.vim'
Plugin 'EasyMotion'
Plugin 'delimitMate.vim'
Plugin 'echofunc.vim'
Plugin 'tpope/vim-dispatch'

if has("unix")
	Plugin 'SudoEdit.vim'
endif

source ~/.vim/pluginrc/tagbar.vim
source ~/.vim/pluginrc/snip.vim
source ~/.vim/pluginrc/compl.vim
source ~/.vim/pluginrc/nerdtree.vim
source ~/.vim/pluginrc/comment.vim

" langs plugin
" ----------------------------------------------
source ~/.vim/pluginrc/golang.vim
Plugin 'xml.vim'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'

" Extra Plugins
if filereadable(expand('~/.vim_extra/plugins.vim'))
	source ~/.vim_extra/plugins.vim
endif

" End of Vundle
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


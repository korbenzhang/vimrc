" Vundle

set rtp+=~/.vim/bundle/Vundle.vim
filetype off                  " required
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'auto_mkdir'
Plugin 'delimitMate.vim'

if has("unix")
	Plugin 'SudoEdit.vim'
endif

source ~/.vim/pluginrc/nerdtree.vim
source ~/.vim/pluginrc/snip.vim
source ~/.vim/pluginrc/comment.vim
source ~/.vim/pluginrc/ctrlp.vim
source ~/.vim/pluginrc/emmet.vim
source ~/.vim/pluginrc/tagbar.vim

" langs plugin
source ~/.vim/pluginrc/golang.vim

Plugin 'xml.vim'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'

" Extra Plugins
if filereadable(expand('~/.vim_extra/extra_plugins.vim'))
	source ~/.vim_extra/extra_plugins.vim
endif

" End of Vundle
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


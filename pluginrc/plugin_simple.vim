" Vundle

set rtp+=~/.vim/bundle/Vundle.vim
filetype off                  " required
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'auto_mkdir'
Plugin 'delimitMate.vim' "pairs

if has("unix")
	Plugin 'SudoEdit.vim'
endif

source ~/.vim/pluginrc/nerdtree.vim
source ~/.vim/pluginrc/snip.vim
source ~/.vim/pluginrc/comment.vim
source ~/.vim/pluginrc/tagbar.vim
source ~/.vim/pluginrc/ctrlp.vim

" Extra Plugins
if filereadable(expand('~/.vim/extra/extra_plugins_simple.vim'))
	source ~/.vim/extra/extra_plugins_simple.vim
endif

" End of Vundle
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


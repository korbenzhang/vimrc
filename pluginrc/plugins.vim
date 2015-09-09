" Plugins Managed by Vundle
"=================================================

"auto make dir when save file
Plugin 'auto_mkdir'

"Emmet
Plugin 'Emmet.vim'

" EasyMotion
Plugin 'EasyMotion'

" pair ( " ' etc.
Plugin 'delimitMate.vim'

"echo func
Plugin 'echofunc.vim'

"SudoWrite
if has("unix")
	Plugin 'SudoEdit.vim'
endif

" collections about snippets.
Plugin 'honza/vim-snippets'

if IsInWin()
	let g:snippets_dir = expand('$HOME/.vim/snippets/')
endif


source ~/.vim/pluginrc/compl.vim

source ~/.vim/pluginrc/tagbar.vim

" Snippets, utlisnips / neosnippet / snipmate
if IsHasPython()
	source ~/.vim/pluginrc/utlisnips.vim
	"source ~/.vim/pluginrc/neosnippet.vim
else
	"source ~/.vim/pluginrc/snipmate.vim
	source ~/.vim/pluginrc/snipmate_old.vim
endif

" Complete, YCM / neocomplete /
" YCM nedd python, YCM not work properly in Windows
" NeoComplete need lua
let g:vimrc#completer="unknown"
if IsHasPython() && !IsInWin()
	" YCM need install and compile first.
	" Not work for Windows.
	source ~/.vim/pluginrc/ycm.vim
	let g:vimrc#completer="YCM"
elseif IsHasLua()
	" No Python
	" neocomplete need lua
	source ~/.vim/pluginrc/neocomplete.vim
	let g:vimrc#completer="neocomplete"
endif

if g:vimrc#completer != "YCM"
	" No Python, Completer not equal YCM
	source ~/.vim/pluginrc/supertab.vim
	source ~/.vim/pluginrc/autocomplpop.vim
endif

source ~/.vim/pluginrc/nerdtree.vim
"source ~/.vim/pluginrc/colorscheme.vim
"source ~/.vim/pluginrc/statusline.vim
source ~/.vim/pluginrc/comment.vim

"source ~/.vim/pluginrc/git.vim

" Langs plugin
" --------------------------------------
source ~/.vim/pluginrc/golang.vim
"source ~/.vim/pluginrc/markdown.vim
source ~/.vim/pluginrc/xml.vim



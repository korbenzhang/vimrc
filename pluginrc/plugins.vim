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

source ~/.vim/pluginrc/golang_vimrc

source ~/.vim/pluginrc/compl_vimrc

source ~/.vim/pluginrc/tagbar_vimrc

" Snippets, utlisnips / neosnippet / snipmate
if IsHasPython()
	source ~/.vim/pluginrc/utlisnips_vimrc
	"source ~/.vim/pluginrc/neosnippet_vimrc
else
	"source ~/.vim/pluginrc/snipmate_vimrc
	source ~/.vim/pluginrc/snipmate_old_vimrc
endif

" Complete, YCM / neocomplete /
" YCM nedd python, YCM not work properly in Windows
" NeoComplete need lua
let g:vimrc#completer="unknown"
if IsHasPython() && !IsInWin()
	" YCM need install and compile first.
	" Not work for Windows.
	source ~/.vim/pluginrc/ycm_vimrc
	let g:vimrc#completer="YCM"
elseif IsHasLua()
	" No Python
	" neocomplete need lua
	source ~/.vim/pluginrc/neocomplete_vimrc
	let g:vimrc#completer="neocomplete"
endif

if g:vimrc#completer != "YCM"
	" No Python, Completer not equal YCM
	source ~/.vim/pluginrc/supertab_vimrc
	source ~/.vim/pluginrc/autocomplpop_vimrc
endif

source ~/.vim/pluginrc/nerdtree_vimrc
"source ~/.vim/pluginrc/colorscheme_vimrc
"source ~/.vim/pluginrc/statusline_vimrc
source ~/.vim/pluginrc/comment_vimrc
"source ~/.vim/pluginrc/git_vimrc
"source ~/.vim/pluginrc/markdown_vimrc
source ~/.vim/pluginrc/xml_vimrc


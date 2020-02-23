
Plug 'honza/vim-snippets'

if IsInWin()
	let g:snippets_dir = expand('$HOME/.vim/snippets/,$HOME/.vim/bundle/vim-snippets/snippets/')
endif

" Snippets, utlisnips / neosnippet / snipmate
if IsHasPython()
	source $HOME/.vim/confs/pluginrc/utlisnips.vim
	"source $HOME/.vim/confs/pluginrc/neosnippet.vim
else
	"source $HOME/.vim/confs/pluginrc/snipmate-msanders.vim
	source $HOME/.vim/confs/pluginrc/snipmate.vim
	"source $HOME/.vim/confs/pluginrc/snipmate_old.vim
endif


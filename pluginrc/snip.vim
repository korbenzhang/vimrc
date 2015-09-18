

Plugin 'honza/vim-snippets'

if IsInWin()
	let g:snippets_dir = expand('$HOME/.vim/snippets/')
endif

" Snippets, utlisnips / neosnippet / snipmate
if IsHasPython()
	source ~/.vim/pluginrc/utlisnips.vim
	"source ~/.vim/pluginrc/neosnippet.vim
else
	"source ~/.vim/pluginrc/snipmate.vim
	source ~/.vim/pluginrc/snipmate_old.vim
endif

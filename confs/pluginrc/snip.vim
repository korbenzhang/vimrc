
Plug 'honza/vim-snippets'

if IsInWin()
	let g:snippets_dir = expand('/uhome/.vim/snippets/,/uhome/.vim/bundle/vim-snippets/snippets/')
endif

" Snippets, utlisnips / neosnippet / snipmate
if IsHasPython()
	source /uhome/.vim/confs/pluginrc/utlisnips.vim
	"source /uhome/.vim/confs/pluginrc/neosnippet.vim
else
	"source /uhome/.vim/confs/pluginrc/snipmate-msanders.vim
	source /uhome/.vim/confs/pluginrc/snipmate.vim
	"source /uhome/.vim/confs/pluginrc/snipmate_old.vim
endif


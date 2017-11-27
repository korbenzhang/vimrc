" statusline 

if IsInDos()
	"dos
	source ~/.vim/confs/statusline.vim
else
	"others
	Plug 'bling/vim-airline'
endif


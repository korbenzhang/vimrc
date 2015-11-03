" statusline 

if IsInDos()
	"dos
	source ~/.vim/confs/statusline.vim
else
	"others
	Plugin 'bling/vim-airline'
endif


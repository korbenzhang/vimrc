" load vim_extra
if filereadable(expand('~/.vim/extra/extra_conf.vim'))
	source ~/.vim/extra/extra_conf.vim
endif

if filereadable(expand('~/gobetle/misc/vim/extra_dev.vim'))
	source ~/gobetle/misc/vim/extra_dev.vim
endif

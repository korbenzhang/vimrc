" UltiSnips 
" require vim 7.0 and later, 
" require vim compile with python2 or python3.

if version < 702 || !IsHasPython()
	finish
endif

let g:vimrc#snippet="ultisnips"

Plug 'SirVer/ultisnips'
source ~/.vim/pluginrc/utlisnips_conf.vim

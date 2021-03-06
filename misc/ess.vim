" ess vimrc
set nocompatible

let mapleader = ","
let g:mapleader = ","

filetype plugin indent on    " required
syntax enable
syntax on

set laststatus=0
set nobackup
set noswapfile

set backspace=indent,eol,start
set whichwrap+=b,s,h,l,<,>,[,]

set shortmess+=I

"set completeopt=menu,preview

set wildmenu
set wildmode=list:longest

set magic
set wrap

behave mswin

source ~/.vim/confs/encoding.vim

" extra for override vim settings.
if filereadable(expand('~/.vim_extra/extra_conf.vim'))
	source ~/.vim_extra/extra_conf.vim
endif

" GOTO
" ~/.vim_extra/extra_conf.vim

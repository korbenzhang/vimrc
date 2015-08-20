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

if has("gui_running")
	source ~/.vim/confs/gui/gui_running.vim
endif

" extra for override vim settings.
if filereadable(expand('~/.vim_extra/conf.vim'))
	source ~/.vim_extra/conf.vim
endif

" GOTO
" ~/.vim_extra/conf.vim

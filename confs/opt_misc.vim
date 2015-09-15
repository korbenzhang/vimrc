" Options
" ----------------------------------------------------
set smartcase

" Bell
set noerrorbells
set novisualbell
" Set to auto read when a file is changed from the outside
set autoread
" Changes the special characters that can be used in search patterns.
" default is on.
set magic
" auto change dir
set autochdir
" change windows directory seperitor to linux
set shellslash

" Search
set hlsearch
set incsearch
set showmatch
set showcmd
set ignorecase
" reserved complete words case.
set infercase
set isfname+={,}
set clipboard+=unnamed	" Yanks go on clipboard instead.

if has("syntax")
	syntax enable
	syntax on
endif

set backspace=indent,eol,start
set whichwrap+=b,s,h,l,<,>,[,]
set linebreak
" Turn off welcome page
set shortmess+=I

if has("win32")
	set shellpipe=\|\ tee
endif

set ruler
set laststatus=0
"set showtabline=2
set nobackup
set noswapfile
set title

" alt not access menu
set winaltkeys=no

" remove utf8 BOM 
" create by Windows
set nobomb


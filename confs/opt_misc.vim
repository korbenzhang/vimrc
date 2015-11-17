" Options

set smartcase

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
set laststatus=2
set number
"set showtabline=2

set title

" alt not access menu
set winaltkeys=no

" remove utf8 BOM 
" create by Windows
set nobomb

" Better Unix / Windows compatibility
set viewoptions=folds,options,cursor,unix,slash 

" Bell
"set noerrorbells
"set novisualbell
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set fillchars=vert:\ ,stl:\     
set isfname-==

set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:p:h\")})%)%(\ %a%)\ -\ %{v:servername}


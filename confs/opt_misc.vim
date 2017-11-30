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
set isfname-==

if !has("nvim")
	set clipboard+=unnamed	" Yanks go on clipboard instead.
	"set clipboard+=unnamedplus
endif

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

set number

set title

" alt not access menu
set winaltkeys=no

" remove utf8 BOM  create by Windows
set nobomb

" Better Unix / Windows compatibility
set viewoptions=folds,options,cursor,unix,slash 

" Bell
set noerrorbells
"set novisualbell
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=


"show tab
"set list 
set fillchars=vert:\ ,stl:\     

" isfname when go to file seperate by = 
set isfname-==

" title string
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:p:h\")})%)%(\ %a%)\ -\ %{v:servername}

set display=lastline
set history=200
set lazyredraw
set linebreak
set listchars=tab:>\ ,trail:-,extends:>,precedes:<
set pastetoggle=<F12>
set scrolloff=1
set shiftround
set sidescrolloff=5
setglobal tags=./tags;

set wildmode=longest:full,full

set ruler

set ttyfast
"set ttimeout
set timeoutlen=1200 " A little bit more time for macros
set ttimeoutlen=50  " Make Esc work faster
set timeout timeoutlen=3000 ttimeoutlen=100

set wildignore+=tags,.*.un~,*.pyc
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules/*
set virtualedit=block
set nojoinspaces
set diffopt=filler,vertical
set autoread
set nrformats=hex

set showtabline=2
set laststatus=2
set modelines=2

set nostartofline

if exists('&fixeol')
  set nofixeol
endif

if has("nvim")
	set termguicolors
endif


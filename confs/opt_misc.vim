" Options
" =======

"for search
set smartcase

" Set to auto read when a file is changed from the outside
set autoread

" Changes the special characters that can be used in search patterns.
" default is on.
"set magic

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
"set isfname+={,}
"set isfname-==

if !has("nvim")
	set clipboard+=unnamed	" Yanks go on clipboard instead.
	"set clipboard+=unnamedplus
endif

syntax enable
syntax on

set backspace=indent,eol,start
set whichwrap+=b,s,h,l,<,>,[,]

set linebreak

" Turn off welcome page
set shortmess+=I

if has("win32")
	set shellpipe=\|\ tee
endif

" show number by default
set nu

"default is off. 
"see titlestring
set title

" title string
"set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:p:h\")})%)%(\ %a%)\ -\ %{v:servername}

" alt not access menu
set winaltkeys=no

" remove utf8 BOM  create by Windows
set nobomb

" Better Unix / Windows compatibility
set viewoptions=folds,options,cursor,unix,slash 

" Bell
"set noerrorbells
"set novisualbell
set noerrorbells novisualbell t_vb=

"show tab
"set list 
"set fillchars=vert:\ ,stl:\     

" isfname when go to file seperate by = 
set isfname-==

"set display=lastline
"set history=200

"default is off
"set lazyredraw

"set listchars=tab:>\ ,trail:-,extends:>,precedes:<

"set pastetoggle=<F12>

"set scrolloff=1

"set sidescrolloff=5

"setglobal tags=./tags;

set ruler

"set ttyfast
"set ttimeout
"set timeoutlen=1200 " A little bit more time for macros
"set ttimeoutlen=50  " Make Esc work faster
set timeout timeoutlen=2000 ttimeoutlen=100

"set virtualedit=block

"set nojoinspaces

"set diffopt=filler,vertical

set ambiwidth=double

set noimcmdline

autocmd QuickFixCmdPre * :update

" auto open quick fix window
autocmd QuickFixCmdPost * :copen 

set notimeout          " 映射时不检查超时
set ttimeout           " 终端键码检查超时
set timeoutlen=100     " 超时为 100 毫秒


"打开断行模块对亚洲语言支持, m 表示允许在两个汉字之间断行， 即使汉字之间没有出
"现空格。 B 表示将两行合并为一行的时候，汉字与汉字之间不要补空格。
set fo+=mB 

set belloff=all

if has("unix") && executable("bash")
	set shell=/bin/bash
endif

if has("directx")
  set renderoptions=type:directx
endif

" hidden
if has('conceal')
	set conceallevel=2 concealcursor=i
endif

" default is off
"set shiftround

" speed key words comlete.
set complete-=i   " disable scanning included files
set complete-=t   " disable searching tags

" split position.
set splitbelow
set splitright

if has('terminal')
	"noremap <M-`> :term<cr>
	map <M-`> :term<cr>
endif

"If in Insert, Replace or Visual mode put a message on the last line.
"default is off
set noshowmode



" Options
" =======

filetype on
filetype indent on
filetype plugin on

"for search
set smartcase

" Set to auto read when a file is changed from the outside
set autoread

" Changes the special characters that can be used in search patterns.
" default is on.
"set magic

" auto change dir
" default is off
set autochdir

" change windows directory seperitor to linux
" default is off
set shellslash

" Search
set hlsearch

set incsearch

" default is off
set showmatch

"Show (partial) command in the last line of the screen.  
" default is on
set showcmd

set ignorecase

" reserved complete words case.
" default is off
set infercase

" path file name
"set isfname+={,}
" isfname when go to file seperate by = 
set isfname-==

if !has("nvim")
	set clipboard+=unnamed	" Yanks go on clipboard instead.
endif

if has('unnamedplus')
  set clipboard^=unnamed
  set clipboard^=unnamedplus
endif

syntax enable
syntax on

set backspace=indent,eol,start
set whichwrap+=b,s,h,l,<,>,[,]

"'linebreak' 'lbr'	boolean	(default off)
set linebreak

" Turn off welcome page
set shortmess+=I

if !has("win32")
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
set viewoptions=folds,options,cursor,unix,curdir,slash
"set viewoptions=folds,options,cursor,unix,slash 

" Bell
"set noerrorbells
"set novisualbell
set noerrorbells novisualbell t_vb=

" Show tab
"set list 
"set fillchars=vert:\ ,stl:\     


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


"block	Allow virtual editing in Visual block mode.
"insert	Allow virtual editing in Insert mode.
"all		Allow virtual editing in all modes.
"onemore	Allow the cursor to move just past the end of the line
" default is off
"set virtualedit=block

"Insert two spaces after a '.', '?' and '!' with a join command.
"When 'cpoptions' includes the 'j' flag, only do this after a '.'.
"Otherwise only one space is inserted.
" default is on
"set nojoinspaces

"set diffopt=filler,vertical

set ambiwidth=double

"When set the Input Method is always on when starting to edit a command
"line, unless entering a search pattern (see 'imsearch' for that).
"Setting this option is useful when your input method allows entering
"English characters directly, e.g., when it's used to type accented
"characters with dead keys.
" default is off
"set noimcmdline

autocmd QuickFixCmdPre * :update

" auto open quick fix window
autocmd QuickFixCmdPost * :copen 

set notimeout          " 映射时不检查超时
set ttimeout           " 终端键码检查超时
set timeoutlen=100     " 超时为 100 毫秒


"打开断行模块对亚洲语言支持, m 表示允许在两个汉字之间断行， 即使汉字之间没有出
"现空格。 B 表示将两行合并为一行的时候，汉字与汉字之间不要补空格。
set fo+=mB 

"default is ''
set belloff=all

if has("unix") && executable("bash")
	set shell=/bin/bash
endif

if has("directx")
	set renderoptions=type:directx
endif

" hidden
"number (default 0)
if has('conceal')
	set conceallevel=0 concealcursor=i
endif

" default is off
"Round indent to multiple of 'shiftwidth'.  Applies to > and <
"set shiftround

" speed key words comlete.
	"v	variable
	"f	function or method
	"m	member of a struct or class
	"t	typedef
	"d	#define or macro
set complete-=i   " disable scanning included files
set complete-=t   " disable searching tags

" split position.
set splitbelow
set splitright

"If in Insert, Replace or Visual mode put a message on the last line.
"default is off
"set noshowmode

"(Vim default: "tcq", Vi default: "vt")
"This is a sequence of letters which describes how automatic
"formatting is to be done.  
"j	Where it makes sense, remove a comment leader when joining lines.
set formatoptions+=j " Delete comment character when joining commented lines

if has('persistent_undo')
  set undofile
  set undodir=$HOME/.config/vim/tmp/undo/
endif

let g:rehash256 = 1
let g:molokai_original = 1

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>

" Enter automatically into the files directory
"autocmd BufEnter * silent! lcd %:p:h
"

"set report=0

let g:sql_type_default = 'mysql'
let g:vim_json_syntax_conceal = 0

set backupcopy=yes

<<<<<<< HEAD
set updatetime=100
=======
set laststatus=0

>>>>>>> 0d4a6d3104b3af06bf95da8d0366e30eec680ca9

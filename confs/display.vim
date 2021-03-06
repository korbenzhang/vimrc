" display

" default is off
set number

" default is off
"set ruler
"set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

"set linespace=0

"set wrapmargin=10

" Status Line, vim default is 1
"set laststatus=2

" backspace and cursor keys wrap to previous/next line
set backspace=indent,eol,start
set whichwrap+=b,s,h,l,<,>,[,]
"set whichwrap+=<,>,h,l,[,]

" Line break
"set showbreak=...

" warp line by words
"set linebreak

"How many tenths of a second to blink
"set mat=2

" display
" lastline / uhex
"set display=lastline

" cmd height
" default is 1
"set cmdheight=2

" show some symble
if has("ambiwidth")
    set ambiwidth=double
endif

" Turn off welcome page
" default filnxtToO
"set shortmess=atI
"set shortmess+=I

" list toggle.
" default is off
"show tab 
"set list

" lcs default is eol:$
"set lcs=tab:\ \ ,trail:-,nbsp:~,eol:¬,extends:>,precedes:<
"set lcs=tab:\ \ ,trail:-,nbsp:~,eol:\ ,extends:>,precedes:<

"set background=dark

" For all text files set 'textwidth' to 78 characters.
"autocmd FileType text setlocal textwidth=78


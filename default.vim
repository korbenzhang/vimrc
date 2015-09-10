" ====================================================
" Korben Vim Config File
" ====================================================
set nocompatible

"let mapleader = ","
"let g:mapleader = ","
let mapleader="\<Space>"
let g:mapleader="\<Space>"
nmap , <leader>

if filereadable(expand('~/.vim_extra/env.vim'))
	source ~/.vim_extra/env.vim
endif

source ~/.vim/confs/env_funcs.vim

filetype off

" Vundle
" --------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'auto_mkdir'
Plugin 'Emmet.vim'
"Plugin 'mattn/emmet-vim'
Plugin 'EasyMotion'
Plugin 'delimitMate.vim'
Plugin 'echofunc.vim'
Plugin 'tpope/vim-dispatch'

if has("unix")
	Plugin 'SudoEdit.vim'
endif

Plugin 'honza/vim-snippets'

if IsInWin()
	let g:snippets_dir = expand('$HOME/.vim/snippets/')
endif

"source ~/.vim/pluginrc/syntastic.vim
source ~/.vim/pluginrc/tagbar.vim

" Snippets, utlisnips / neosnippet / snipmate
if IsHasPython()
	source ~/.vim/pluginrc/utlisnips.vim
	"source ~/.vim/pluginrc/neosnippet.vim
else
	"source ~/.vim/pluginrc/snipmate.vim
	source ~/.vim/pluginrc/snipmate_old.vim
endif

" Complete, YCM / neocomplete /
" YCM nedd python, YCM not work properly in Windows
" NeoComplete need lua
let g:vimrc#completer="unknown"
if IsHasPython() && !IsInWin()
	" YCM need install and compile first.
	" Not work for Windows.
	"source ~/.vim/pluginrc/ycm.vim
	source ~/.vim/pluginrc/ycm_conf.vim
	let g:vimrc#completer="YCM"
elseif IsHasLua()
	" No Python
	" neocomplete need lua
	source ~/.vim/pluginrc/neocomplete.vim
	let g:vimrc#completer="neocomplete"
endif

if g:vimrc#completer != "YCM"
	" No Python, Completer not equal YCM
	source ~/.vim/pluginrc/supertab.vim
	source ~/.vim/pluginrc/autocomplpop.vim
endif

source ~/.vim/pluginrc/nerdtree.vim
source ~/.vim/pluginrc/comment.vim

"source ~/.vim/pluginrc/git.vim

" langs plugin
" ----------------------------------------------
source ~/.vim/pluginrc/golang.vim
"source ~/.vim/pluginrc/markdown.vim
Plugin 'xml.vim'
"Plugin 'html5.vim'
"Plugin 'InfoGeeker/html5.vim'
Plugin 'othree/html5.vim'
"Plugin 'css3'
"Bundle 'lepture/vim-css'
"Plugin 'css_color.vim'
Plugin 'pangloss/vim-javascript'

" Extra Plugins
if filereadable(expand('~/.vim_extra/plugins.vim'))
	source ~/.vim_extra/plugins.vim
endif

source ~/.vim/confs/vundle_end.vim

" Options
" ----------------------------------------------------
set smartcase

"Bell
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

" Encodings
" -------------------------------------------
" file encodings
set fencs=ucs-bom,utf-8,gb18030,cp936,GBK

" file formates
set ffs=unix,dos,mac

if has("gui_running")
	set enc=utf-8
endif

" New File encoding
au BufNewFile * set fileformat=unix
au BufNewFile * set fenc=utf-8

set clipboard+=unnamed	" Yanks go on clipboard instead.

if has("syntax")
	syntax enable
	syntax on
endif

"set ruler

set backspace=indent,eol,start
set whichwrap+=b,s,h,l,<,>,[,]
set linebreak
" Turn off welcome page
set shortmess+=I

" Color 
" --------------------------------------------------------
" Popup menu hightLight Group
hi Pmenu ctermbg=13 ctermfg=0 guibg=LightGray guifg=Black
"hi Pmenu ctermbg=4 ctermfg=0 guibg=LightGray guifg=Black
hi PmenuSel ctermbg=7 ctermfg=1 guibg=DarkBlue guifg=White
hi PmenuSbar ctermbg=7 ctermfg=0 guibg=DarkGray guifg=Black
hi PmenuThumb ctermbg=8 ctermfg=2 guibg=Black guifg=White

" TabLine
hi TabLineSel ctermfg=15 ctermbg=2
hi LeaderTab guifg=#666666 ctermfg=5

if &term =~ "xterm"
	let &t_Co=256
	let &t_AF="\e[38;5;%dm"
	let &t_AB="\e[48;5;%dm"
endif 

set ruler
set laststatus=2
"set showtabline=2

set nobackup
set noswapfile

"set nofoldenable

" Complete
" -------------------------------------------------
" default is menu priview
" menu menuone longest preview
set wildmenu						"enable ctrl-n and ctrl-p to scroll thru matches
set wildignorecase
set completeopt=longest,menu
set wildignore=*.o,*.obj,*~			"stuff to ignore when tab completing
set wildmode=list:longest		"make cmdline tab completion similar to bash
set dictionary+=~/.vim/dict/words		" ~/.vim/dict/words

"GUI
if has("gui_running")
	set guitablabel=%N.%t
	set guioptions-=T
	set guioptions-=m
	set guioptions-=r
endif

if has("gui_win32")
	au GUIEnter * simalt ~x
endif

if has("win32")
	set shellpipe=\|\ tee
endif

" Tab
" -------------------------------------------------
set noexpandtab
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Indent
" -------------------------------------------------
set smartindent
set autoindent   " auto indent
"set cindent     " c program indent

behave mswin
source ~/.vim/confs/mswin.vim

" Mouse
" -------------------------------------------------
if has("mouse")
	set mouse=a
	set mousefocus
	set mousehide
 	set mousem=popup
 	set mouset=500
endif

set title

" Keys
" -------------------------------------------------

" make alt work
source ~/.vim/confs/esc_alt.vim

" keys for vimrc, quick load and edit vimrc file.
map <leader>ee :tabedit ~/.vim/default.vim<cr>
map <leader>ss :source ~/.vim/default.vim<cr>
map <leader>vc :tabedit ~/.vim_extra/conf.vim<cr>
map <leader>vp :tabedit ~/.vim_extra/plugins.vim<cr>

" reload after edit vimrc
au! BufWritePost *[\._]vimrc source $HOME/.vimrc
au! BufWritePost vimrc source $HOME/.vimrc
au! BufWritePost *.vim source $HOME/.vimrc

" Move cursor
nmap <up> gk
nmap <down> gj
nmap <home> g0
nmap <end> g$

" Leader
map <leader>w :w<cr>
map <leader>q :close<cr>
map <leader>qq :q<cr>
map <leader>s :up<cr>
map <leader>x :
map <leader>e :edit 
map <leader>te :tabedit 
map <leader>tn :tabnew<cr>

map <leader>m :make<cr>

" clear highlight match.
nmap <silent> <esc><esc> :noh<cr>

" Don't use Ex mode, use Q for formatting
map  Q gq

" alt not access menu
set winaltkeys=no

map <F4> :close<cr>
nmap <C-T> :tabnew<cr>

nmap <C-s> :w<cr>
imap <C-s> <esc><C-s>

nmap <M-s> :w<cr>
imap <M-s> <C-O>:w<cr>

nmap <M-q> :close<cr>
imap <M-q> <esc><M-q>

"Delete Lines
nmap <C-k> dd
imap <C-k> <esc><C-k>i

"Move Lines
nmap <M-Down> :<C-u>move .+1<CR>
imap <M-Down> <C-o>:<C-u>move .+1<CR>
vmap <M-Down> :move '>+1<CR>gv
nmap <M-Up> :<C-u>move .-2<CR>
imap <M-Up> <C-o>:<C-u>move .-2<CR>
vmap <M-Up> :move '<-2<CR>gv

" Words
nmap <S-Del> dw
imap <S-Del> <esc><S-Del>

" GoTo file
nmap gf :tabnew <cfile><cr>
nmap <M-f> gf
imap <M-f> <esc>gf

" GoTo Define
nmap <M-d> gd
imap <M-d> <esc><M-d>

" Indent
nmap <M-[> <<
nmap <M-]> >>
vmap <M-[> <gv
vmap <M-]> >gv

" alt key for tab window
imap <M-1> <Esc>1gt
nmap <M-1> 1gt
imap <M-2> <Esc>2gt
nmap <M-2> 2gt
imap <M-3> <Esc>3gt
nmap <M-3> 3gt
imap <M-4> <Esc>4gt
nmap <M-4> 4gt
imap <M-5> <Esc>5gt
nmap <M-5> 5gt
imap <M-6> <Esc>6gt
nmap <M-6> 6gt
imap <M-7> <Esc>7gt
nmap <M-7> 7gt
imap <M-8> <Esc>8gt
nmap <M-8> 8gt
imap <M-9> <Esc>9gt
nmap <M-9> 9gt


" Switch Tab
nmap <M-HOME> <ESC>:tabfirst<cr>
nmap <M-END> <ESC>:tablast<cr>
nmap <M-PageUp> <ESC>:tabprevious<cr>
nmap <M-PageDown> <ESC>:tabnext<cr>

" Switch Windows
noremap <silent> <C-left> <esc><C-W><left>
noremap <silent> <C-right> <esc><C-W><right>
noremap <silent> <C-up> <esc><C-W><up>
noremap <silent> <C-down> <esc><C-W><down>


" AutoCmd
" ---------------------------------------------
au BufRead,BufNewFile *.md setl filetype=markdown
au BufRead,BufNewFile *.tml setl filetype=html

source ~/.vim/confs/mabetle_func.vim

" Extra for override vim settings.
if filereadable(expand('~/.vim_extra/conf.vim'))
	source ~/.vim_extra/conf.vim
endif

" Files Links
" ~/.vim/pluginrc/plugins.vim
" ~/.vim/confs/confs.vim
" ~/.vim/confs/mabetle_func.vim
" ~/.vim/confs/complete.vim
" ~/.vim/keymap/all.vim

" ~/.vim/pluginrc/golang.vim
" ~/.vim/pluginrc/compl.vim

" ~/.vim/misc/vim_extra/plugins.vim
" ~/.vim/misc/vim_extra/conf.vim

" ~/.vim_extra/env.vim
" ~/.vim_extra/plugins.vim
" ~/.vim_extra/conf.vim

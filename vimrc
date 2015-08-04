" ====================================================
" Korben Vim Config File
" ====================================================
set nocompatible

let mapleader = ","
let g:mapleader = ","

if filereadable(expand('~/.vim_extra/env.vim'))
	source ~/.vim_extra/env.vim
endif

source ~/.vim/confs/env_funcs_vimrc

filetype off

" Vundle
" --------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'auto_mkdir'
Plugin 'Emmet.vim'

if !IsInWin()
	Plugin 'scrooloose/syntastic'
endif

Plugin 'EasyMotion'
Plugin 'delimitMate.vim'
Plugin 'echofunc.vim'

if has("unix")
	Plugin 'SudoEdit.vim'
endif

Plugin 'honza/vim-snippets'

if IsInWin()
	let g:snippets_dir = expand('$HOME/.vim/snippets/')
endif

source ~/.vim/pluginrc/golang_vimrc
source ~/.vim/pluginrc/tagbar_vimrc

" Snippets, utlisnips / neosnippet / snipmate
if IsHasPython()
	source ~/.vim/pluginrc/utlisnips_vimrc
	"source ~/.vim/pluginrc/neosnippet_vimrc
else
	"source ~/.vim/pluginrc/snipmate_vimrc
	source ~/.vim/pluginrc/snipmate_old_vimrc
endif

" Complete, YCM / neocomplete /
" YCM nedd python, YCM not work properly in Windows
" NeoComplete need lua
let g:vimrc#completer="unknown"
if IsHasPython() && !IsInWin()
	" YCM need install and compile first.
	" Not work for Windows.
	source ~/.vim/pluginrc/ycm_vimrc
	let g:vimrc#completer="YCM"
elseif IsHasLua()
	" No Python
	" neocomplete need lua
	source ~/.vim/pluginrc/neocomplete_vimrc
	let g:vimrc#completer="neocomplete"
endif

if g:vimrc#completer != "YCM"
	" No Python, Completer not equal YCM
	source ~/.vim/pluginrc/supertab_vimrc
	source ~/.vim/pluginrc/autocomplpop_vimrc
endif

source ~/.vim/pluginrc/nerdtree_vimrc
source ~/.vim/pluginrc/comment_vimrc

Plugin 'xml.vim'							"xml

" Extra Plugins
if filereadable(expand('~/.vim_extra/plugins_vimrc'))
	source ~/.vim_extra/plugins_vimrc
endif

source ~/.vim/confs/vundle_end_vimrc

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
" Wrap
set wrap
" auto change dir
set autochdir
" change windows directory seperitor to linux
set shellslash
" Search
set hlsearch
set incsearch
set showmatch
set ignorecase
" reserved complete words case.
set infercase
set isfname+={,}
" file encodings
set fencs=ucs-bom,utf-8,gb18030,cp936,GBK

" file formates
set ffs=unix,dos,mac

" New File encoding
au BufNewFile * set fileformat=unix
au BufNewFile * set fenc=utf-8

set clipboard+=unnamed	" Yanks go on clipboard instead.

syntax enable
syntax on

set ruler

set backspace=indent,eol,start
set whichwrap+=b,s,h,l,<,>,[,]
set linebreak
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
hi TabLineSel ctermfg=1 ctermbg=4
hi LeaderTab guifg=#666666

if &term =~ "xterm"
	let &t_Co=256
	let &t_AF="\e[38;5;%dm"
	let &t_AB="\e[48;5;%dm"
endif 

set nobackup
set noswapfile

"set nofoldenable

" Complete
" ========================
" default is menu priview
" menu menuone longest preview
set completeopt=longest,menu
set wildmenu						"enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~			"stuff to ignore when tab completing
set wildignorecase
set wildmode=list:longest		"make cmdline tab completion similar to bash
set dictionary+=~/.vim/dict/words		" ~/.vim/dict/words

"GUI
set guitablabel=%N.%t

set guioptions-=T
set guioptions-=m
set guioptions-=r

if has("win32")
	set shellpipe=\|\ tee
endif

" Tab
" ====================================================
set noexpandtab
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent shiftwidth=4

" Indent
" ====================================================
set ai          " auto indent
set si          " smart indent
set cindent     " c program indent

behave mswin

" Keys
" -------------------------------------------------
" keys for vimrc, quick load and edit vimrc file.
map <leader>ee :tabedit $HOME/.vim/vimrc<cr>
map <leader>ss :source $HOME/.vim/vimrc<cr>

" reload after edit vimrc
au! BufWritePost *[\._]vimrc source $HOME/.vim/vimrc
au! BufWritePost vimrc source $HOME/.vim/vimrc
au! BufWritePost *.vim source $HOME/.vim/vimrc
" clear highlight match.
nmap <silent> <esc><esc> :noh<cr>

" Don't use Ex mode, use Q for formatting
map  Q gq

map <F4> :close<cr>
nmap <C-T> :tabnew<cr>

nmap <C-s> :w<cr>
imap <C-s> <esc><C-s>

nmap <M-s> <C-s>
imap <M-s> <esc><C-s>

nmap <M-q> :q<cr>
imap <M-q> <esc><M-q>

nmap gf :tabnew <cfile><cr>

" GoTo file
nmap <M-f> gf
imap <M-f> <esc>gf

" GoTo declare
map <M-d> gd

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


" go to first tab
"nmap <M-h> <ESC>:tabfirst<cr>
nmap <M-HOME> <ESC>:tabfirst<cr>

" go to last tab
"nmap <M-e> <ESC>:tablast<cr>
nmap <M-END> <ESC>:tablast<cr>
"nmap <M-l> <ESC>:tablast<cr>

" go to previous tab
" nmap <M-u> <ESC>:tabprevious<cr>
nmap <M-PageUp> <ESC>:tabprevious<cr>
"nmap <M-j> <ESC>:tabprevious<cr>

" go to next tab
" nmap <M-d> <ESC>:tabnext<cr>
nmap <M-PageDown> <ESC>:tabnext<cr>
"nmap <M-k> <ESC>:tabnext<cr>


" Windows switch with Ctrl+
"-------------------------------
noremap <silent> <C-left> <esc><C-W><left>
noremap <silent> <C-right> <esc><C-W><right>
noremap <silent> <C-up> <esc><C-W><up>
noremap <silent> <C-down> <esc><C-W><down>


" Extra for override vim settings.
if filereadable(expand('~/.vim_extra/conf_vimrc'))
	source ~/.vim_extra/conf_vimrc
endif


" GOTO
" ~/.vim/pluginrc/plugins_vimrc
" ~/.vim/confs/confs_vimrc
" ~/.vim/confs/complete_vimrc
" ~/.vim/keymap/all_vimrc
" ~/.vim/pluginrc/golang_vimrc
" ~/.vim/pluginrc/compl_vimrc
" ~/.vim/misc/vim_extra/plugins_vimrc
" ~/.vim/misc/vim_extra/conf_vimrc
" ~/.vim_extra/plugins_vimrc
" ~/.vim_extra/conf_vimrc

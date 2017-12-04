" Complete

" default is menu priview
" menu menuone longest preview
"set completeopt=menu,preview
set completeopt=longest,menu

set wildmenu						"enable ctrl-n and ctrl-p to scroll thru matches
"set wildignore=*.o,*.obj,*~			"stuff to ignore when tab completing
set wildignore+=tags,.*.un~,*.pyc,*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules/*

" default is off
set wildignorecase

"full 用下一个完整的匹配补全。在最后一次匹配之后，使用原来的
"字符串，然后又是第一个匹配。
"longest 用最长的公共子串补全。如果结果没有变长，使用下一个部分。
"longest:full 类似于 "longest"，但如果 'wildmenu' 打开的话，使用之。
"list 如果有多于一个补全，列出所有的匹配。
"list:full 如果有多于一个补全，列出所有的匹配并先用第一个补全。
"list:longest 如果有多于一个补全，列出所有的匹配并先用最长的子串补全。
"set wildmode=longest:full
set wildmode=list:longest		"make cmdline tab completion similar to bash

" dict in  .vim
"set dictionary+=~/.vim/confs/dict/words		" ~/.vim/confs/dict/words
set dictionary+=~/.vim/confs/dict/misc.dict

" set Ctrl+j in insert mode, like VS.Net
imap <C-j> <C-X><C-O>


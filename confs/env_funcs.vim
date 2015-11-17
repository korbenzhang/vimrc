" basic func for vim.

"let mapleader = ","
"let g:mapleader = ","
let mapleader="\<Space>"
let g:mapleader="\<Space>"
nmap , <leader>

let g:vimrc#completer="unknown"
let g:vimrc#snippet="unknown"
let g:vimrc#debug=""

if filereadable(expand('~/.vim_extra/extra_env.vim'))
	source ~/.vim_extra/extra_env.vim
endif

function! IsInWin()
	let win = ['win16', 'win32', 'win64', 'win95']
	for w in win
		if (has(w))
			return 1
		endif
	endfor
	return 0
endfunction

function! IsInDos()
	return IsInWin() && !has("gui_running")
endfunction

function! IsInWinGui()
	return IsInWin() && has("gui_running")
endfunction

function! IsInUnix()
	return has("unix")
endfunction

function! IsInUnixGui()
	return has("unix") && has("gui_running")
endfunction

function! IsInUnixConsole()
	return has("unix") && !has("gui_running")
endfunction

" cygwin
function! IsInWinUnix()
	return has("win32unix")
endfunction

function! IsInXterm()
	return &term =~ "xterm"
endfunction

" make dir for both windows and unix.
function! InitDir(dir)
	setl noshellslash
	let init_dir = expand(a:dir)
	if isdirectory(init_dir)
		"dir exists, Skip
		setl shellslash
		return
	endif
	if has("win32")
		silent exec "!md ".init_dir
		setl shellslash
		return
	endif
	" linux and others.
	silent exec "!mkdir -p ".init_dir
	setl shellslash
endfunction

" IsHasPython
function! IsHasPython()
	return has("python") || has("python3")
endfunction

" IsHasLua
function! IsHasLua()
	return has("lua")
endfunction

" IsHasRuby
function! IsHasRuby()
	return has("ruby")
endfunction

function! ShowEnv()
	echo "Vim Version           :".version
	echo "Is Has Lua            :".IsHasLua()
	echo "Is Has Ruby           :".IsHasRuby()
	echo "Is Has Python         :".IsHasPython()
	echo "Is Has Lua            :".IsHasLua()
	echo "Is In  Win            :".IsInWin()
	echo "Is Has GUI Running    :".has("gui_running")
	echo "TERM                  :".&term
	echo "Encoding              :".&encoding

	echo "Complete              :".g:vimrc#completer
	echo "Snippet               :".g:vimrc#snippet
	echo "Debug Message         :".g:vimrc#debug
endfunction

command! -bar -narg=0 ShowEnv  call ShowEnv()

function! IsHasCtags()
	return executable("ctags")
endfunction


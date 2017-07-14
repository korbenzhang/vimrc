" basic func for vim.

"let mapleader = ","
"let g:mapleader = ","
let mapleader="\<Space>"
let g:mapleader="\<Space>"
nmap , <leader>

let g:vimrc#completer="unknown"
let g:vimrc#snippet="unknown"

if filereadable(expand('~/.vim/extra/extra_env.vim'))
	source ~/.vim/extra/extra_env.vim
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

func! IsInGui()
	return has("gui_running")
endfunc

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

func! IsInNvim()
	return has("nvim")
endfunc


" make dir for both windows and unix.
function! InitDir(dir)
	setl noshellslash
	let init_dir = expand(a:dir)
	if isdirectory(init_dir)
		"dir exists, Skip
		setl shellslash
		return
	endif
	if has("win32") || has('win64')
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

function! IsHasPython3()
	return has("python3")
endfunction

" IsHasLua
function! IsHasLua()
	return has("lua")
endfunction

" IsHasRuby
function! IsHasRuby()
	return has("ruby")
endfunction

function! IsHasCtags()
	return executable("ctags")
endfunction


function! ShowEnv()
	echo "Vim Version           :".version
	echo "Is Has Lua            :".IsHasLua()
	echo "Is Has Ruby           :".IsHasRuby()
	echo "Is Has Python         :".IsHasPython()
	echo "Is Has Python3        :".IsHasPython3()
	echo "Is Has Ctags          :".IsHasCtags()
	echo "\n"

	echo "Is In  GUI            :".IsInGui()
	echo "Is In  Win            :".IsInWin()
	echo "Is In  WinUnix        :".IsInWinUnix()
	echo "Is In  Unix           :".IsInUnix()
	echo "Is In  Xterm          :".IsInXterm()
	echo "Is In  Nvim           :".IsInNvim()
	echo "\n"
	
	echo "TERM                  :".&term
	echo "Encoding              :".&encoding
	echo "\n"
	
	echo "Complete              :".g:vimrc#completer
	echo "Snippet               :".g:vimrc#snippet
endfunction

command! -bar -narg=0 ShowEnv  call ShowEnv()


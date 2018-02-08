" basic func for vim.

"let mapleader = ","
"let g:mapleader = ","
let mapleader="\<Space>"
let g:mapleader="\<Space>"
nmap , <leader>

let g:vimrc#completer="unknown"
let g:vimrc#snippet="unknown"

func! IsInWin()
	let win = ['win16', 'win32', 'win64', 'win95']
	for w in win
		if (has(w))
			return 1
		endif
	endfor
	return 0
endfunc

func! IsInGui()
	return has("gui_running")
endfunc

func! IsInDos()
	return IsInWin() && !has("gui_running")
endfunc

func! IsInWinGui()
	return IsInWin() && has("gui_running")
endfunc

func! IsInUnix()
	return has("unix")
endfunc

func! IsInUnixGui()
	return has("unix") && has("gui_running")
endfunc

func! IsInUnixConsole()
	return has("unix") && !has("gui_running")
endfunc

" cygwin
func! IsInWinUnix()
	return has("win32unix")
endfunc

func! IsInXterm()
	return &term =~ "xterm"
endfunc

func! IsInNvim()
	return has("nvim")
endfunc


" make dir for both windows and unix.
func! InitDir(dir)
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
endfunc

" IsHasPython
func! IsHasPython()
	return has("python") || has("python3")
endfunc

func! IsHasPython3()
	return has("python3")
endfunc

" IsHasLua
func! IsHasLua()
	return has("lua")
endfunc

" IsHasRuby
func! IsHasRuby()
	return has("ruby")
endfunc

func! IsHasCtags()
	return executable("ctags")
endfunc

func! IsHasXterm()
	return executable("xterm")
endfunc

func! ShowEnv()
	echo "Vim Version           :".version
	echo "Is Has Lua            :".IsHasLua()
	echo "Is Has Ruby           :".IsHasRuby()
	echo "Is Has Python         :".IsHasPython()
	echo "Is Has Python3        :".IsHasPython3()
	echo "Is Has Ctags          :".IsHasCtags()
	echo "Is Has Directx        :".has("directx")
	echo "Is Has Terminal       :".has("terminal")
	echo "\n"

	echo "Is In  GUI            :".IsInGui()
	echo "Is In  Win            :".IsInWin()
	echo "Is In  WinUnix        :".IsInWinUnix()
	echo "Is In  Unix           :".IsInUnix()
	echo "Is In  Xterm          :".IsInXterm()
	echo "Is In  Nvim           :".IsInNvim()
	echo "\n"

	echo "GOROOT                :".$GOROOT
	echo "GOPATH                :".$GOPATH
	echo "\n"
	
	echo "TERM                  :".&term
	echo "Encoding              :".&encoding
	echo "\n"
	
	echo "Complete              :".g:vimrc#completer
	echo "Snippet               :".g:vimrc#snippet
endfunc

command! -bar -narg=0 ShowEnv  call ShowEnv()


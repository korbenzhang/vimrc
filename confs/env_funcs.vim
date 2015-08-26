" basic func for vim.
" ---------------------

function! IsInDos()
	return has("win32") && !has("gui_running")
endfunction

function! IsInWin()
	return has("win32") || has("win64")
endfunction

function! IsInWinGui()
	return IsInWin() && has("gui_running")
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
	echo "Is Has Lua            :".IsHasLua()
	echo "Is Has Ruby           :".IsHasRuby()
	echo "Is Has Python         :".IsHasPython()
	echo "Is Has Lua            :".IsHasLua()
	echo "Is In  Win            :".IsInWin()
	echo "Is Has GUI Running    :".has("gui_running")
	echo "TERM                  :".&term

	echo "Complete              :".g:vimrc#completer
endfunction

command! -bar -narg=0 ShowEnv  call ShowEnv()


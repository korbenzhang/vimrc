" func misc

func! GetExecPrefix()
	if has("win32")
		return "!start cmd /k "
	endif
	return "!"
endfunc

"trim string 
function! Trim(str) abort
  return matchstr(a:str,'^\s*\zs.\{-}\ze\s*$')
endfunction

func! TrimEndWhiteSpace()
	exe "normal mz"
	%s/\s\+$//ge
	exe "normal `z"
endfunc
command! -bar -narg=0 TrimEndWhiteSpace call TrimEndWhiteSpace()
"au BufWritePre * execute ':%s/\s\+$//g'

function! HasPaste()
	if &paste
		return 'PASTE MODE  '
	endif
	return ''
endfunction

function! UniqLine()
	exe "normal mz"
	%s/^\(.*\)\(\n\1\)\+$/\1/
	exe "normal `z"
endfunction
command! -bar -narg=0 UniqLine  call UniqLine()

func! DisableBell()
	set vb t_vb=
endfunc
command! -bar -narg=0 DisableBell  call DisableBell()

func! DisableCompl()
	set completefunc=
endfunc
command! -bar -narg=0 DisableCompl  call DisableCompl()

func! AddBlankLine()
	exe ':%s/\n/\r\r/ge'
endfunc
command! -bar -narg=0 AddBlankLine call AddBlankLine()

func! GitRmFile()
	exec '!git rm % -f'
endfunc
command! -bar -narg=0 GitRmFile call GitRmFile()

func! RmFile()
	exec '!rm % -f'
endfunc
command! -bar -narg=0 RmFile call RmFile()

func! ToggleWrap()
	set wrap!
endfunc
command! -bar -narg=0 ToggleWrap call ToggleWrap()

func! TogglePaste()
	set paste!
endfunc
command! -bar -narg=0 TogglePaste call TogglePaste()

func! DeleteBlankLines()
	:g/^\s*$/d
endfunc

func! FmtLines()
	:%s/\s\+$//e
	:%s/\n\{3,}/\r\r/e
endfunc

func! HighlightEndBlank()
	:highlight extraSpace ctermbg=red guibg=red
	:match extraSpace /\v\s+$/
	":highlight WhitespaceEOL ctermbg=red guibg=red
endfunc

func! HightlightLongLink()
	:highlight rightMargin term=bold ctermfg=blue guifg=blue
	:match rightMargin /.\%>72v/
endfunc

func! DeleteBeginBlank()
	:%s/^\s\+//e
endfunc

function! StripTrailingWhitespace()
  if !&binary && &filetype != 'diff'
    normal mz
    normal Hmy
    %s/\s\+$//e
    normal 'yz<CR>
    normal `z
  endif
endfunction

function! StripTrailingWhitespace2()
	normal mZ
	let l:chars = col("$")
	%s/\s\+$//e
	if (line("'Z") != line(".")) || (l:chars != col("$"))
		echo "Trailing whitespace stripped\n"
	endif
	normal `Z
endfunction

"  Vimrc
function! EditVimrc()
    :source ~/.vim/vimrc
endfunction
command! -bar -narg=0 EditVimrc  call EditVimrc()

func! UpdateVimrc()
	
endfunc
command! -bar -narg=0 UpdateVimrc  call UpdateVimrc()

"  line end blank
function! DeleteLineEndBlank()
	execute ':%s/\s\+$//g'
endfunction
command! -bar -narg=0 DeleteLineEndBlank  call DeleteWindowsLineEnd()

" edit hosts
function! EditHosts()
	if has("win32") || has("win32unix")
		execute ':tabedit C:/Windows/System32/drivers/etc/hosts'
	else
		execute ':tabedit /etc/hosts'
	endif
endfunction
command! -bar -narg=0 EditHosts  call EditHosts()

" Sudo save.
function! SudoSave()
	execute ':w !sudo tee %'
endfunction
command! -bar -narg=0 SudoSave  call SudoSave()

"  Delete Windows ^M
function! DeleteWindowsLineEnd()
	execute ':%s///g'
endfunction
command! -bar -narg=0 DeleteWindowsLineEnd  call DeleteWindowsLineEnd()


"Remove indenting on empty line
"F2处理行尾的空格以及文件尾部的多余空行
"map <F2> :w<CR>:call CleanupBuffer(1)<CR>:noh<CR>
function! CleanupBuffer(keep)
    " Skip binary files
    if (&bin > 0)
        return
    endif
    " Remove spaces and tabs from end of every line, if possible
    silent! %s/\s\+$//ge
    " Save current line number
    let lnum = line(".")
    " number of last line
    let lastline = line("$")
    let n        = lastline
    " while loop
    while (1)
        " content of last line
        let line = getline(n)
        " remove spaces and tab
        if (!empty(line))
            break
        endif
        let n = n - 1
    endwhile
    " Delete all empty lines at the end of file
    let start = n+1+a:keep
    if (start < lastline)
        execute n+1+a:keep . "," . lastline . "d"
    endif
    " after clean spaces and tabs, jump back
    exec "normal " . lnum . "G"
endfunction
command! -bar -narg=0 CleanupBuffer call CleanupBuffer(1)

function! UpdateTagFile()
    silent !ctags -R --fields=+ianS --extra=+q
endfunction
command! -bar -narg=0 UpdateTagFile  call UpdateTagFile()

" RunLine
fun! RunLine()
	let line = getline('.')
	" trim space
	let line = Trim(line)

	let start = strpart(line,0,1)
	" most script comment start with #
	if start == "#" || start == '"' || start == '$'
		let line = strpart(line,1,len(line))
		let line = Trim(line)
	endif
	" c like comment
	let start2 = strpart(line,0,2)
	if start2 == '//'
		let line = strpart(line,2,len(line))
		let line = Trim(line)
	endif
	"bat rem
	let start3 = strpart(line,0,3)
	if start3 == 'REM' || start3 == 'rem'
		let line = strpart(line,3,len(line))
		let line = Trim(line)
	endif
	let line = Trim(line)
	execute '!'.line
endf
command! -bar -narg=0 RunLine  call RunLine()
command! -bar -narg=0 RL  call RunLine()
command! -bar -narg=0 RCL  call RunLine()

fun! RunSQLLine()
	let line = getline('.')
	" trim space
	let line = Trim(line)

	let start = strpart(line,0,1)
	" most script comment start with #
	if start == "#" || start == '"' || start == '$'
		let line = strpart(line,1,len(line))
		let line = Trim(line)
	endif
	" c like comment
	let start2 = strpart(line,0,2)
	if start2 == '//'
		let line = strpart(line,2,len(line))
		let line = Trim(line)
	endif
	"bat rem
	let start3 = strpart(line,0,3)
	if start3 == 'REM' || start3 == 'rem'
		let line = strpart(line,3,len(line))
		let line = Trim(line)
	endif
	let line = Trim(line)
	execute '! mysql -uroot -p'. $MYSQLPASSWD .' -hdb.mabetle.com dbc  -e "'.line.'"'
endfun
command! -bar -narg=0 RunSQLLine  call RunSQLLine()

fun! SudoRunLine()
	let line = getline('.')
	" trim space
	let line = Trim(line)

	let start = strpart(line,0,1)
	" most script comment start with #
	if start == "#" || start == '"' || start == '$'
		let line = strpart(line,1,len(line))
		let line = Trim(line)
	endif
	" c like comment
	let start2 = strpart(line,0,2)
	if start2 == '//'
		let line = strpart(line,2,len(line))
		let line = Trim(line)
	endif
	"bat rem
	let start3 = strpart(line,0,3)
	if start3 == 'REM' || start3 == 'rem'
		let line = strpart(line,3,len(line))
		let line = Trim(line)
	endif
	let line = Trim(line)
	execute '!sudo '.line
endf
command! -bar -narg=0 SudoRunLine  call SudoRunLine()

" RunCurrentLine
function! RunSelection()
	execute ":'<,'>w ! sh"
endfunction
command! -bar -narg=0 RunSelection  call RunSelection()

" InstallCtags
func! InstallCtags()
	if executable('ctags')
		echo "There already has ctags in path. skip install."
		return
	endif

	if has("unix") && (!has("win32unix"))
		silent! sudo apt-get install ctags
	endif
	"in windows,copy to bin dir

endfunction
command! -bar -narg=0 InstallCtags  call InstallCtags()

" GBKTerm
func! GBKTerm()
	set termencoding=GBK
endfunction
command! -bar -narg=0 GBKTerm  call GBKTerm()


" UTFTerm
func! UTFTerm()
	set termencoding=utf-8
endfunction
command! -bar -narg=0 UTFTerm  call UTFTerm()

" NoBell
func! DisableBell()
	set vb t_vb=
endfunction
command! -bar -narg=0 DisableBell  call DisableBell()

func! ViewUrl()
	exec "!lynx <cfile>"
endfunc
command! -bar -narg=0 ViewUrl call ViewUrl()

"run mcmd cmds directly
fun! RunGoCmdFunc(...)
	let line = getline('.')
	let line = Trim(line)
	
	let start = strpart(line,0,4)
	
	if start != "func"
		echo "no func in this line"
		return
	endif
	let ip = split(line,' ')
	let tn = split(ip[2],")")[0]
	let fn = split(ip[3],"(")[0]
	let gocmd  = "go run /devlab/gocodes/src/mabetle/cmds/cmds_task/main.go "


	execute GetExecPrefix().' '.gocmd . fn . '.' . tn.' '.join(a:000)
endfun
command! -bar -narg=* RunGoCmdFunc  call RunGoCmdFunc(<f-args>)

"run mcmd cmds directly
fun! RunGoCmds(...)
	let gocmd  = "go run /devlab/gocodes/src/mabetle/cmds/cmds_task/main.go "
	execute GetExecPrefix().' '.gocmd .' '.join(a:000)
endfun
command! -bar -narg=* RunGoCmds  call RunGoCmds(<f-args>)

" ----------------------------------------------------------------------------
" :Root | Change directory to the root of the Git repository
" ----------------------------------------------------------------------------
function! Root()
  let root = systemlist('git rev-parse --show-toplevel')[0]
  if v:shell_error
    echo 'Not in git repo'
  else
    execute 'lcd' root
    echo 'Changed directory to: '.root
  endif
endfunction
command! Root call Root()

func! RunFile()
	exec "up"	
	let s:prefix=GetExecPrefix()
	"dgrage by file type
	if &filetype == 'ruby'
		exec s:prefix.'ruby '.shellescape('%')
	elseif	&filetype == 'sql'
		exec s:prefix.'mysql -u root -p'. $MYSQLPASSWD . ' -hdb.mabetle.com < %'
	elseif &filetype == 'js' || &filetype == 'javascript'
		exec s:prefix.'node %'
	elseif &filetype == 'bash' || &filetype == 'sh'
		exec s:prefix.'bash %'
	elseif &filetype == 'groovy'
		exec s:prefix.'groovy %'
	elseif &filetype == 'python'
		exec s:prefix.'python %'
	elseif &filetype == 'dosbatch' && has('win32')
		exec s:prefix.'%'
	elseif &filetype == 'make'
		exec s:prefix.'make'
	elseif &filetype == 'go'
		exec s:prefix.'go run %'
	elseif &filetype == 'scala'
		exec s:prefix.'scala %'
	elseif &filetype == 'perl'
		exec s:prefix.'perl %'
	elseif &filetype == 'ps'
		exec s:prefix.'powershell.exe %'
	else
		echo 'Cannot run, Unsupport file type'
	endif
endfunc
command! RunFile call RunFile()

inoremap <silent> <F5> <C-O><F5>
nnoremap <silent> <F5> :RunFile<cr>

func! FmtIndent()
	normal gg=G
endfunc
command! FmtIndent call FmtIndent()

function! TrimEndLines()
	let save_cursor = getpos(".")
	:silent! %s#\($\n\s*\)\+\%$##
	call setpos('.', save_cursor)
endfunction
command! -bar -narg=0 TrimEndLines call TrimEndLines()

func! Fmt()
	exec "up"	
	let s:prefix=GetExecPrefix()
	"dgrage by file type
	if &filetype == 'css'
		exec s:prefix. 'cssfmt %'		
	elseif &filetype=="js" || &filetype="javascript"
		exec s:prefix.'jsfmt -w %'
	else
		echo 'Cannot format, unsupport filetype.'
	fi
endfunc
command! -bar -narg=0 Fmt call Fmt()

" startup windows cmd
func! WinCmd()
	exec '!start cmd /K'
endfunc
command! -bar -narg=0 WinCmd call WinCmd()


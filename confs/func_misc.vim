" func misc

" utils
func! GetTrimLine()
	let line=getline('.')
	return Trim(line)
endfunc

"trim string
func! Trim(str) abort
	let line=substitute(a:str,"\"","","g")
	return matchstr(line,'^\s*\zs.\{-}\ze\s*$')
endfunc

" ==== end utils ===

let g:ExecPrefix="ter "

func! SetExecPrefix(prefix)
	let g:ExecPrefix=a:prefix
endfunc
command! AsyncExecEnable call SetExecPrefix("AsyncRun ")
command! AsyncExecDisable call SetExecPrefix("! ")

func! GetExecPrefix(prefix)
	if (a:prefix == "")
		return g:ExecPrefix
	endif
	return a:prefix
endfunc

func! TrimEndWhiteSpace()
	exe "normal mz"
	%s/\s\+$//ge
	exe "normal `z"
endfunc
command! -bar -narg=0 TrimEndWhiteSpace call TrimEndWhiteSpace()
"au BufWritePre * execute ':%s/\s\+$//g'

func! UniqLine()
	exe "normal mz"
	%s/^\(.*\)\(\n\1\)\+$/\1/
	exe "normal `z"
endfunc
command! -bar -narg=0 UniqLine  call UniqLine()

func! ComplDisable()
	set completefunc=
endfunc
command! -bar -narg=0 ComplDisable  call ComplDisable()

func! AddBlankLine()
	exec ':%s/\n/\r\r/ge'
endfunc
command! -bar -narg=0 AddBlankLine call AddBlankLine()

func! GitRemoveFile()
	silent exec '!git rm % -f'
endfunc
command! -bar -narg=0 GitRemoveFile call GitRemoveFile()

func! RemoveFile()
	silent exec '!rm % -f'
endfunc
command! -bar -narg=0 RemoveFile call RemoveFile()

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

func! StripTrailingWhitespace()
  if !&binary && &filetype != 'diff'
    normal mz
    normal Hmy
    %s/\s\+$//e
    normal 'yz<CR>
    normal `z
  endif
endfunc

func! StripTrailingWhitespace2()
	normal mZ
	let l:chars = col("$")
	%s/\s\+$//e
	if (line("'Z") != line(".")) || (l:chars != col("$"))
		echo "Trailing whitespace stripped\n"
	endif
	normal `Z
endfunc

"  line end blank
func! DeleteLineEndBlank()
	execute ':%s/\s\+$//g'
endfunc
command! -bar -narg=0 DeleteLineEndBlank  call DeleteWindowsLineEnd()

" edit hosts
func! EditHosts()
	if has("win32") || has("win32unix")
		execute ':tabedit C:/Windows/System32/drivers/etc/hosts'
	else
		execute ':tabedit /etc/hosts'
	endif
endfunc
command! -bar -narg=0 EditHosts  call EditHosts()

" Sudo save.
func! SudoSave()
	exec ':w !sudo tee %'
endfunc
command! -bar -narg=0 SudoSave  call SudoSave()

"  Delete Windows ^M
func! DeleteWindowsLineEnd()
	exec ':%s///g'
endfunc
command! -bar -narg=0 DeleteWindowsLineEnd  call DeleteWindowsLineEnd()

func! ToUnixFile()
	set ff=unix
	silent :w
endfunc
command! -bar -narg=0 ToUnixFile  call ToUnixFile()

"Remove indenting on empty line
func! CleanupBuffer(keep)
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
endfunc
command! -bar -narg=0 CleanupBuffer call CleanupBuffer(1)

" RunLine
fun! RunLine(prefix)
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
	if start2 == '//' || start2 == '--'
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
	exec a:prefix.' '.line
endf

command! -bar -narg=0 RunLine  call RunLine("!")
command! -bar -narg=0 RL  call RunLine("!")
command! -bar -narg=0 RLWSL  call RunLine("! @wsl")

command! -bar -narg=0 RLAPT  call RunLine("! sudo apt-get install -y")
command! -bar -narg=0 RLGoGet  call RunLine("! go get -v ")

command! -bar -narg=0 AsyncRunLine call RunLine("AsyncRun")
command! -bar -narg=0 ARL call RunLine("AsyncRun")
nmap <C-L> :RunLine<cr>

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
	if start2 == '//' || start2 == "--"
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
	execute '! mysql -uroot -p'. $MYSQLPW .' -hdb.mabetle.com dbc  -e "'.line.'"'
endfun
command! -bar -narg=0 RunSQLLine  call RunSQLLine()

fun! SudoRunSQLLine()
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
	execute '! sudo mysql dbc  -e "'.line.'"'
endfun
command! -bar -narg=0 SudoRunSQLLine  call SudoRunSQLLine()

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
	if start2 == '//' || start2 == "--"
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
func! RunSelection()
	execute ":'<,'>w ! sh"
endfunc
command! -bar -narg=0 RunSelection  call RunSelection()

func! ViewUrl()
	exec "!lynx <cfile>"
endfunc
command! -bar -narg=0 ViewUrl call ViewUrl()

" RevelView
fun! RevelView()
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
	execute ':tabnew ../views/'. tn . '/' . fn.'.html'
	"echo ':tabnew ../views/'. tn . '/' . fn.'.html'
endfun
command! -bar -narg=0 RevelView  call RevelView()

func! Root()
  let root = systemlist('git rev-parse --show-toplevel')[0]
  if v:shell_error
    echo 'Not in git repo'
  else
    execute 'lcd' root
    echo 'Changed directory to: '.root
  endif
endfunc
command! Root call Root()

func! RunFile(prefix)
	exec "up"
	let s:prefix=GetExecPrefix(a:prefix)
	"run by file type
	if &filetype == 'ruby'
		exec s:prefix.'ruby %'
	elseif &filetype == 'java'
		exec s:prefix.'java %'
	elseif	&filetype == 'sql'
		exec s:prefix.'mysql -u root -p'. $MYSQLPW . ' -hdb.mabetle.com dbc < %'
	elseif &filetype == 'ts' || &filetype == 'typescript'
		exec s:prefix.'ts-node %'
	elseif &filetype == 'js' || &filetype == 'javascript'
		exec s:prefix.'node %'
	elseif &filetype == 'vb'
		exec s:prefix.'wscript %'
	elseif &filetype == 'bash' || &filetype == 'sh'
		if has("win32")
			exec s:prefix.'@wsl %'
		else
			exec s:prefix.'bash %'
		endif
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
	elseif &filetype == 'swift'
		exec s:prefix.'swift %'
	elseif &filetype == 'perl'
		exec s:prefix.'perl %'
	elseif &filetype == 'ps1'
		exec s:prefix.'powershell.exe %'
	else
		echo 'Cannot run, Unsupport file type'
	endif
endfunc
command! RunFile call RunFile("!")
command! AsyncRunFile call RunFile("!start cmd /k")
nmap <f5> :RunFile<cr>
imap <f5> <C-O><f5>

func! TrimEndLines()
	let save_cursor = getpos(".")
	:silent! %s#\($\n\s*\)\+\%$##
	call setpos('.', save_cursor)
endfunc
command! -bar -narg=0 TrimEndLines call TrimEndLines()

func! Fmt()
	exec "up"
	let s:prefix=GetExecPrefix()
	"judge by file type
	if &filetype == 'css'
		exec s:prefix. 'cssfmt %'
	elseif &filetype=="js" || &filetype="javascript"
		exec s:prefix.'jsfmt -w %'
	else
		echo 'Cannot format, unsupport filetype.'
	fi
endfunc
command! -bar -narg=0 Fmt call Fmt()

"Git clone line
func! GitCloneLine()
	exec '!cd ~/checkout/ && git clone '. getline('.')
endfunc
command! -bar -narg=0 GitCloneLine call GitCloneLine()

func! CopyFilePath()
	if has("win32")
		let @+ = expand('%p')
	else
	exec system("xclip -i -selection clipboard", expand("%:p"))
	endif
endfunc
command! CopyFilePath call CopyFilePath()

" check API output
fun! CURL(...)
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
	let cmd  = "curl http://localhost:9000/".tn."/".fn.join(a:000)
	echo cmd
	execute GetExecPrefix("!").cmd 
endfun
command! -bar -narg=* CURL  call CURL(<f-args>)

func! TableDefine()
	exec "!tabledef %"
endfunc
command! -bar -narg=* TableDefine  call TableDefine(<f-args>)

func! ImportYAML()
	exec "!importyaml %"
endfunc
command! -bar -narg=* ImportYAML  call ImportYAML(<f-args>)


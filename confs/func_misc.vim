" func misc

let g:ExecPrefix="!"

func! SetExecPrefix(prefix)
	let g:ExecPrefix=a:prefix
endfunc
command! AsyncExecEnable call SetExecPrefix("AsyncRun ")
command! AsyncExecDisable call SetExecPrefix("! ")

"trim string 
func! Trim(str) abort
  return matchstr(a:str,'^\s*\zs.\{-}\ze\s*$')
endfunc

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

func! WrapToggle()
	set wrap!
endfunc
command! -bar -narg=0 WrapToggle call WrapToggle()

func! PasteToggle()
	set paste!
endfunc
command! -bar -narg=0 PasteToggle call PasteToggle()

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
	exec a:prefix.' '.line
endf

command! -bar -narg=0 RunLine  call RunLine("!")
command! -bar -narg=0 RL  call RunLine("!")
command! -bar -narg=0 RCL  call RunLine("!")
command! -bar -narg=0 ARCL call RunLine("!start cmd /k")
command! -bar -narg=0 TRCL call RunLine("term")
command! -bar -narg=0 AsyncRCL call RunLine("AsyncRun")

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
func! RunSelection()
	execute ":'<,'>w ! sh"
endfunc
command! -bar -narg=0 RunSelection  call RunSelection()

" GBKTerm
func! GBKTerm()
	set termencoding=GBK
endfunc
command! -bar -narg=0 GBKTerm  call GBKTerm()

" UTFTerm
func! UTFTerm()
	set termencoding=utf-8
endfunc
command! -bar -narg=0 UTFTerm  call UTFTerm()

" NoBell
func! BellDisable()
	set vb t_vb=
endfunc
command! -bar -narg=0 BellDisable  call BellDisable()

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

	execute GetExecPrefix("!").' '.gocmd . fn . '.' . tn.' '.join(a:000)
endfun
command! -bar -narg=* RunGoCmdFunc  call RunGoCmdFunc(<f-args>)

"run mcmd cmds directly
fun! RunGoCmds(...)
	let gocmd  = "go run /devlab/gocodes/src/mabetle/cmds/cmds_task/main.go "
	execute GetExecPrefix("!").' '.gocmd .' '.join(a:000)
endfun
command! -bar -narg=* RunGoCmds  call RunGoCmds(<f-args>)

" ----------------------------------------------------------------------------
" :Root | Change directory to the root of the Git repository
" ----------------------------------------------------------------------------
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
		exec s:prefix.'ruby '.shellescape('%')
	elseif	&filetype == 'sql'
		exec s:prefix.'mysql -u root -p'. $MYSQLPASSWD . ' -hdb.mabetle.com < %'
	elseif &filetype == 'js' || &filetype == 'javascript'
		exec s:prefix.'node %'
	elseif &filetype == 'sh'
		exec s:prefix.'sh %'
	elseif &filetype == 'bash'
		if has("win32")
			if exists('gitbash')
				exec s:prefix.'gitbash %'
			else
				exec s:prefix.'sh %'
			endif
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

inoremap <silent> <F5> <C-O><F5>
nnoremap <silent> <F5> :RunFile<cr>

func! FmtIndent()
	normal gg=G
endfunc
command! FmtIndent call FmtIndent()

func! TrimEndLines()
	let save_cursor = getpos(".")
	:silent! %s#\($\n\s*\)\+\%$##
	call setpos('.', save_cursor)
endfunc
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

func! MinUI()
	set laststatus=0
	set showtabline=0
endfunc
command! -bar -narg=0 UIMin call MinUI()

func! FullUI()
	set laststatus=2
	set showtabline=2
endfunc
command! -bar -narg=0 UIFull call FullUI()

func! AdaptUI()
	set laststatus=1
	set showtabline=1
endfunc
command! -bar -narg=0 UIAdapt call AdaptUI()

"Git clone line
func! GitCloneLine()
	"TODO check dir exists or not
	exec '!cd ~/checkout/ && git clone '. getline('.')
endfunc
command! -bar -narg=0 GitCloneLine call GitCloneLine()

func! LineGoGet()
	"TODO check dir exists or not
	exec '!go get -v '. getline('.')
endfunc
command! -bar -narg=0 LineGoGet call LineGoGet()

func! LineViewGoPkgDir()
	let line=getline('.')
	let as=split(line,' ')
	let pkg=as[len(as)-1]
	let cmd=":e " . $GOPATH . '/src/' . pkg
	echo expand(cmd)
	"exec "". expand(cmd)
endfunc
command! -bar -narg=0 LineViewGoPkgDir call LineViewGoPkgDir()

func! GetTrimLine()
	let line=getline('.')
	return Trim(line)
endfunc

"Get line package
func! LineGoGet()
	let line=GetTrimLine()
	let cmd="go get -v " . pkg
	exec "". cmd
endfunc
command! -bar -narg=0 LineGoGet call LineGoGet()

func! LineGoUp()
	let line=GetTrimLine()
	let cmd="go get -u -v " . pkg
	exec "". cmd
endfunc
command! -bar -narg=0 LineGoUp call LineGoUp()

func! Monaco(size)
	if !has("gui_running")
		return
	endif
	if (a:size=="")
		let a:size = "13"
	endif
	if has("win32")
		let &guifont="Monaco:h". a:size
	elseif has("gui_gtk2")
		let &guifont="Monaco\ ". a:size
	endif
endfunc
command! -bar -narg=* Monaco call Monaco(<f-args>)


func! CopyFilePath()
	if has("win32")
		let @+ = expand('%p')
	else
	exec system("xclip -i -selection clipboard", expand("%:p"))
	endif
endfunc
command! CopyFilePath call CopyFilePath()


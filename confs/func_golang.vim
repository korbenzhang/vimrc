" func for go lang
"

"run mcmd cmds directly
fun! GoMigrate(...)
	let tn = expand("<cword>")
	let gocmd  = "go run /devlab/gocodes/src/mabetle/cmds/migrate_models_task/main.go migrate "
	execute GetExecPrefix("!").' '.gocmd . tn.' '.join(a:000)
endfun
command! -bar -narg=* GoMigrate  call GoMigrate(<f-args>)


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
	let gocmd  = "go run /devlab/gocodes/src/mabetle/cmds/cmdstask/main.go "
	execute GetExecPrefix("!").' '.gocmd . tn . '.' . fn' '.join(a:000)
endfun
command! -bar -narg=* GoRunCmdFunc  call RunGoCmdFunc(<f-args>)

"run mcmd cmds directly
fun! RunGoCmdCursorWord(...)
	let fn = expand("<cword>")
	let gocmd  = "go run /devlab/gocodes/src/mabetle/cmds/cmdstask/main.go "
	execute GetExecPrefix("!").' '.gocmd . fn .' '.join(a:000)
endfun
command! -bar -narg=* GoRunCmdCursorWord  call RunGoCmdCursorWord(<f-args>)

"run mcmd cmds directly
fun! RunGoCmds(...)
	let gocmd  = "go run /devlab/gocodes/src/mabetle/cmds/cmdstask/main.go "
	execute GetExecPrefix("!").' '.gocmd .' '.join(a:000)
endfun
command! -bar -narg=* GoRunCmds  call RunGoCmds(<f-args>)

func! GoGet()
	let line=GetTrimLine()
	exec '!go get -v '. line
endfunc
command! -bar -narg=0 GoGet call GoGet()

func! ViewGoPkgDir()
	let line=GetTrimLine()
	let as=split(line,' ')
	let pkg=as[len(as)-1]
	let pkg=substitute(pkg,"\"","","g")
	let cmd=':tabedit ' . expand($GOPATH) . '/src/' . pkg
	"echom cmd
	exec cmd
endfunc
command! -bar -narg=0 ViewGoPkgDir call ViewGoPkgDir()

func! GoGetUp()
	let line=GetTrimLine()
	let cmd="go get -u -v " . line
	exec "". cmd
endfunc
command! -bar -narg=0 GoGetUp call GoGetUp()

func! FixGoComment()
	exec "!fixgocomment %"
endfunc
command! -bar -narg=0 FixGoComment call FixGoComment()


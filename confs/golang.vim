"Go Lang
au BufRead,BufNewFile *.go setl filetype=go

au FileType go set dictionary=~/.vim/dict/golang.dict

"should define GOROOT and GOCODES
if exists("$GOROOT")
	au FileType go setl tags+=$GOROOT/src/tags
endif 

if exists("$GOCODES")
	au FileType go setl tags+=$GOCODES/src/tags
endif

"Key map
au FileType go nmap <buffer> <F5> :up<cr>:!go run %<cr>
au FileType go nmap <buffer> <F6> :!go test<CR>

au FileType go imap <buffer> <F5> <ESC>:up<cr>:!go run %<cr>
au FileType go imap <buffer> <F6> <ESC>:up<cr>:!go test<cr>

function! MabetleDirName()
	return split(expand("%:p:h"),"/")[-1]
endfunction

function! MabetleGoInstall()
	silent exec "! go install"
endfunction

function! MabetleWhichExe(cmd)
	return system("which ".a:cmd)
endfunction

function! MabetleGoRemoveExe()
	if !MabetleGoIsMain()
		echo "not main package"
		return
	endif
	let cmd = MabetleDirName()
	if !executable(cmd)
		echo cmd." not found"
	endif
	let realname = system("which ".cmd)
	"echo realname
	silent exec "! rm -fr ".realname
endfunction

" Go install generate execute file name same as parent dir name.
function! MabetleGoRun()
	if !MabetleGoIsMain()
		echo "not main package, run go install"
		return
	endif
	let cmd = MabetleDirName()
	if !executable(cmd)
		call MabetleGoInstall()
	endif
	exec "!".cmd
endfunction
command! -bar -narg=0 MabetleGoRun  call MabetleGoRun()

function! MabetleGoFuncName()
	
endfunction

" Goto view
function! MabetleGoView()

endfunction

" Goto controller
function! MabetleGoController()

endfunction

function! MabetleGoIsMain()
	return getline(1) == "package main"
endfunction

function! MabetleGoOffs()
	let pos = getpos(".")[1:2]
	if &encoding == 'utf-8'
		let offs = line2byte(pos[0]) + pos[1] - 2
	else
		let c = pos[1]
		let buf = line('.') == 1 ? "" : (join(getline(1, pos[0] - 1), "\n") . "\n")
		let buf .= c == 1 ? "" : getline(pos[0])[:c-2]
		let offs = len(iconv(buf, &encoding, "utf-8"))
	endif
	let arg1=g:godef_command . " -f=" . expand("%:p") . " -i " . offs
	echo arg1
endfunction

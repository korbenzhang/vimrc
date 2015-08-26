" Mabetle Functions
" =================

"  Vimrc
function! MabetleVimrc()
    execute ':tabedit $HOME/.vim/vimrc'
endfunction
command! -bar -narg=0 MabetleVimrc  call MabetleVimrc()
command! -bar -narg=0 EditVimrc  call MabetleVimrc()

"  line end blank
function! MabetleLineEndBlankDelete()
	execute ':%s/\s\+$//g'
endfunction
command! -bar -narg=0 MabetleLineEndBlankDelete  call MabetleLineEndBlankDelete()
command! -bar -narg=0 DeleteLineEndBlank  call MabetleLineEndBlankDelete()

" edit hosts
function! MabetleHosts()
	if has("win32") || has("win32unix")
		execute ':tabedit C:/Windows/System32/drivers/etc/hosts'
	else
		execute ':tabedit /etc/hosts'
	endif
endfunction
command! -bar -narg=0 MabetleHosts  call MabetleHosts()
command! -bar -narg=0 EditHosts  call MabetleHosts()

" Sudo save.
function! MabetleSudoSave()
	execute ':w !sudo tee %'
endfunction
command! -bar -narg=0 MabetleSudoSave  call MabetleSudoSave()
command! -bar -narg=0 SudoSave  call MabetleSudoSave()

"  Delete Windows ^M
function! MabetleWindowsLineEndDelete()
	execute ':%s/
endfunction
command! -bar -narg=0 MabetleWindowsLineEndDelete  call MabetleWindowsLineEndDelete()
command! -bar -narg=0 DeleteWindowsLineEnd  call MabetleWindowsLineEndDelete()


" Automatically remove trailing spaces when saving a file.
" Not recommend do this, should give user choice what to do.
"autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

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

function! UpdateTagFile()
    silent !ctags -R --fields=+ianS --extra=+q
endfunction
command! -bar -narg=0 UpdateTagFile  call UpdateTagFile()

" RunFile
function! RunFile()
	echo "Run File"
	if &filetype == "go"
		echo "Go File"
		execute ':! go run %'
		"silent :! go run %
		return
	endif

	echo "I donot know how to run this file"
endfunction
command! -bar -narg=0 RunFile  call RunFile()

" RunCurrentLine
function! RunCurrentLine()
	execute ':.w ! sh'
endfunction
command! -bar -narg=0 RunCurrentLine  call RunCurrentLine()
command! -bar -narg=0 RCL  call RunCurrentLine()

" InstallCtags
func! InstallCtags()
	if executable('ctags')
		echo "There already has ctags in path. skip install."
		return
	endif

	if has("unix") && (!has("win32unix"))
		silent! sudo apt-get install ctags
	endif
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

func! Molokai()
	colorscheme molokai
endfunction
command! -bar -narg=0 Molokai  call Molokai()

" UpdateGoCodesTags
func! UpdateGoCodesTags()
    if !executable('gotags')
		echo "Can't find gotags."
		echo ""
	else
		silent exec "!gotags -R -file=/apps/go/src/tags  /apps/go/src/."
		silent exec "!gotags -R -file=/devlab/gocodes/src/tags /devlab/gocodes/src/."
    endif
endfunction
command! -bar -narg=0 UpdateGoCodesTags  call UpdateGoCodesTags()

" NoBell
func! NoBell()
	set vb t_vb=
endfunction
command! -bar -narg=0 NoBell  call NoBell()

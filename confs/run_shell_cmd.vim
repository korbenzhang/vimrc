" Shell command 
func! s:RunShellCommand(cmdline)
	botright new

	setlocal buftype=nofile
	setlocal bufhidden=delete
	setlocal nobuflisted
	setlocal noswapfile
	setlocal nowrap
	setlocal filetype=shell
	setlocal syntax=shell

	call setline(1, a:cmdline)
	call setline(2, substitute(a:cmdline, '.', '=', 'g'))
	execute 'silent $read !' . escape(a:cmdline, '%#')
	setlocal nomodifiable
endfunc

command! -complete=file -nargs=+ Shell call s:RunShellCommand(<q-args>)
" e.g. Grep current file for <search_term>: Shell grep -Hn <search_term> %

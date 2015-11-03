" Install some vim needed.

function! CheckCtags()
	echo "Check ctags ... "
	if executable('ctags')
		echo "ctags is exists."
		return
	endif

	echo "not install ctags, install now ... "

	if has("unix")
		silent exec "sudo apt-get install ctags -y"
	else if has("win32")
		silent exec "copy "
	endif

	echo "end check ctags."
endfunction

function! CheckGoTags()
	echo "Check gotags ..."

	if !executable("gotags")
		echo "gotags exists."
		return
	endif

	echo "not install gotags"

	if !IsHasGo()
		return
	endif

	silent exec "go get github.com/jstemmer/gotags"

	echo "end check gotags."
endfunction

function! IsHasGo()
	if executable("go")
		return 1
	endif
	echo "not found go, gotags depends on go."
	echo "see: https://github.com/golang/go"
	return 0
endfunction


function! CheckGoCode()
	echo "check gocode ..."
	if executable("gocode")
		echo "gocode exists."
	endif

	if !IsHasGo()
		return
	endif

	echo "not found gocode, install now ..."

	silent exec "go get github.com/nsf/gocode"
	
	echo "end check gocode."
endfunction







" tags

set tag=tags,./tags

au FileType go setl tag=tags,./tags,$GOCODES/src/tags,$GOROOT/src/tags
au FileType java setl tag=tags,./tags,$JAVA_HOME/src/tags

let gitroot = substitute(system('git rev-parse --show-toplevel'), '[\n\r]', '', 'g')

if gitroot != ''
	let &tags = &tags . ',' . gitroot . '/.git/tags'
endif


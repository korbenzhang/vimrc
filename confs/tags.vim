" tags

set tags=tags,./tags

au FileType go setl tags=tags,./tags,/devlab/gocodes/src/mabetle/tags
"tag+=/devlab/gocodes/src/tags,/apps/go/src/tags,/devlab/gocodes/src/mabetle/tags

au FileType java setl tags=$JAVA_HOME/src/tags

let gitroot = substitute(system('git rev-parse --show-toplevel'), '[\n\r]', '', 'g')

if gitroot != ''
	let &tags = &tags . ',' . gitroot . '/tags'
endif


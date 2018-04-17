
func! s:plug_help_sink(line)
	let dir = g:plugs[a:line].dir
	for pat in ['doc/*.txt', 'README.md']
		let match = get(split(globpath(dir, pat), "\n"), 0, '')
		if len(match)
			execute 'tabedit' match
			return
		endif
	endfor
	tabnew
	execute 'Explore' dir
endfunc

command! PlugHelp call fzf#run(fzf#wrap({
			\ 'source': sort(keys(g:plugs)),
			\ 'sink': func('s:plug_help_sink')}))

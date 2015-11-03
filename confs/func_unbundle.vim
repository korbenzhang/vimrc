" Add an UnBundle command 

function! UnBundle(arg, ...)
	let bundle = vundle#config#init_bundle(a:arg, a:000)
	call filter(g:vundle#bundles, 'v:val["name_spec"] != "' . a:arg . '"')
endfunction

com! -nargs=+         UnBundle
			\ call UnBundle(<args>)

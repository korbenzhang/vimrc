
"Vim plugin for open current file's loction 
"Maintainer: ShengFu Li 
"Last Change: 2012 Sep 30 

if exists("loaded_OpenFileLocation") 
	finish
endif

let loaded_OpenFileLocation = 1 

function OpenFileLocation() 
	if ( expand("%") != "" ) 
		execute "!start explorer /select, %" 
	else
		execute "!start explorer /select, %:p:h" 
	endif
endfunction

map <leader>o <ESC>:call OpenFileLocation()<CR>

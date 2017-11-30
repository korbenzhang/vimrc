
if IsInWin()
	Plug 'Yggdroot/LeaderF', { 'do': '.\install.bat' }
else
	Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
endif

let g:Lf_WildIgnore = {
		\ 'dir': ['.svn','.git','.hg'],
		\ 'file': []
		\}

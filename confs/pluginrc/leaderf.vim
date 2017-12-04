
if IsInWin()
	Plug 'Yggdroot/LeaderF', { 'do': '.\install.bat' }
else
	Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
endif

let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_DefaultMode = 'Fuzzy'
let g:Lf_CursorBlink = 0

let g:Lf_MruFileExclude = ['*.so']
let g:Lf_DefaultExternalTool = 'ag'
let g:Lf_RootMarkers = ['.project', '.svn','.git','.hg']
let g:Lf_StlSeparator = { 'left': '', 'right': '' }

let g:Lf_WildIgnore = {
	\ 'dir': ['.svn','.git','.hg'],
	\ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
	\}


if !has("python")
	finish
endif

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
	\ 'dir': ['.svn','.git','.hg','_libs','dist','target','build'],
	\ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
	\}

" key map
"
"noremap <f1> <leader>f
noremap <f1> :LeaderfFile<cr>

let g:Lf_StlPalette = {
			\   'stlName': {
			\       'gui': 'bold',
			\       'font': 'NONE',
			\       'guifg': '#2F5C00',
			\       'guibg': '#BAFFA3',
			\       'cterm': 'bold',
			\       'ctermfg': '22',
			\       'ctermbg': '157'
			\   },
			\   'stlCategory': {
			\       'gui': 'NONE',
			\       'font': 'NONE',
			\       'guifg': '#000000',
			\       'guibg': '#F28379',
			\       'cterm': 'NONE',
			\       'ctermfg': '16',
			\       'ctermbg': '210'
			\   },
			\   'stlNameOnlyMode': {
			\       'gui': 'NONE',
			\       'font': 'NONE',
			\       'guifg': '#000000',
			\       'guibg': '#E8ED51',
			\       'cterm': 'NONE',
			\       'ctermfg': '16',
			\       'ctermbg': '227'
			\   },
			\   'stlFullPathMode': {
			\       'gui': 'NONE',
			\       'font': 'NONE',
			\       'guifg': '#000000',
			\       'guibg': '#AAAAFF',
			\       'cterm': 'NONE',
			\       'ctermfg': '16',
			\       'ctermbg': '147'
			\   },
			\   'stlFuzzyMode': {
			\       'gui': 'NONE',
			\       'font': 'NONE',
			\       'guifg': '#000000',
			\       'guibg': '#E8ED51',
			\       'cterm': 'NONE',
			\       'ctermfg': '16',
			\       'ctermbg': '227'
			\   },
			\   'stlRegexMode': {
			\       'gui': 'NONE',
			\       'font': 'NONE',
			\       'guifg': '#000000',
			\       'guibg': '#7FECAD',
			\       'cterm': 'NONE',
			\       'ctermfg': '16',
			\       'ctermbg': '121'
			\   },
			\   'stlCwd': {
			\       'gui': 'NONE',
			\       'font': 'NONE',
			\       'guifg': '#EBFFEF',
			\       'guibg': '#606168',
			\       'cterm': 'NONE',
			\       'ctermfg': '195',
			\       'ctermbg': '241'
			\   },
			\   'stlBlank': {
			\       'gui': 'NONE',
			\       'font': 'NONE',
			\       'guifg': 'NONE',
			\       'guibg': '#3B3E4C',
			\       'cterm': 'NONE',
			\       'ctermfg': 'NONE',
			\       'ctermbg': '237'
			\   },
			\   'stlLineInfo': {
			\       'gui': 'NONE',
			\       'font': 'NONE',
			\       'guifg': '#000000',
			\       'guibg': '#EBFFEF',
			\       'cterm': 'NONE',
			\       'ctermfg': '16',
			\       'ctermbg': '195'
			\   },
			\   'stlTotal': {
			\       'gui': 'NONE',
			\       'font': 'NONE',
			\       'guifg': '#000000',
			\       'guibg': '#BCDC5C',
			\       'cterm': 'NONE',
			\       'ctermfg': '16',
			\       'ctermbg': '149'
			\   }
			\ }

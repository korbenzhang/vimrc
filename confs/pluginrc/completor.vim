
Plug 'maralla/completor.vim'


Plug 'masawada/completor-dictionary'


autocmd FileType * execute 'setlocal dictionary='.expand($HOME.'/.vim/confs/dict/'.&filetype.'.dict')


Plug 'maralla/completor-typescript'

let g:completor_gocode_binary = '/devlab/gocodes/bin/gocode'

let g:completor_css_omni_trigger = '([\w-]+|@[\w-]*|[\w-]+:\s*[\w-]*)$'

"split:  same as :split.
"vsplit: same as :vsplit.
"tab:    same as :tab split
let g:completor_def_split = 'tab'

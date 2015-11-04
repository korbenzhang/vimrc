" view

let $view_dir=expand('~/.vim/views')

call InitDir($view_dir)

set viewdir=$view_dir

autocmd BufWinLeave * mkview
autocmd BufWinEnter * "silent loadview"

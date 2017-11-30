" view

set viewdir=expand('~/.vim/rundata/views')

autocmd BufWinLeave * mkview
autocmd BufWinEnter * "silent loadview"


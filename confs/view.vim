" view

set viewdir=expand('$HOME/.vim/rundata/views')

autocmd BufWinLeave * mkview
autocmd BufWinEnter * "silent loadview"


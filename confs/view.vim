" view

set viewdir=expand('/uhome/.vim/rundata/views')

autocmd BufWinLeave * mkview
autocmd BufWinEnter * "silent loadview"


" swapdir

let $swap_dir=expand('~/rundata/vim/swap/')

call InitDir($swap_dir)

" set wrap dir
set dir=$swap_dir

" default is on
set swapfile



"install plug auto

if empty(glob('/uhome/.vim/autoload/plug.vim'))
  silent !curl -fLo /uhome/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

func! InitPlug()
  silent !curl -fLo /uhome/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endfunc

command! -bar -narg=0 InitPlug  call InitPlug()


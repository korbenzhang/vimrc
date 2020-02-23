" Save your backups to a less annoying place than the current directory.
" If you have .vim-backup in the current directory, it'll use that.
" Otherwise it saves it to $HOME/.cache/vim/backup or . if all else fails.

if isdirectory('$HOME/.cache/vim/backup') == 0
  :silent !mkdir -p $HOME/.cache/vim/backup >/dev/null 2>&1
endif

set backupdir=$HOME/.cache/vim/backup/
set backup

" Save your swp files to a less annoying place than the current directory.
" If you have .vim-swap in the current directory, it'll use that.
" Otherwise it saves it to $HOME/.vim/swap, $HOME/tmp or .
if isdirectory('$HOME/.cache/vim/swap') == 0
  :silent !mkdir -p $HOME/.cache/vim/swap >/dev/null 2>&1
endif
set directory=$HOME/.cache/vim/swap/,$HOME/tmp/,.

" viminfo stores the the state of your previous editing session
"set viminfo+=n$HOME/.viminfo

if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then $HOME/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory('$HOME/.cache/vim/undo') == 0
    :silent !mkdir -p $HOME/.cache/vim/undo > /dev/null 2>&1
  endif
  set undodir=$HOME/.cache/vim/undo/
  set undofile
endif

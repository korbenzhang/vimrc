" Save your backups to a less annoying place than the current directory.
" If you have .vim-backup in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/backup or . if all else fails.

if isdirectory($HOME . '/.vim/rundata/backup') == 0
  :silent !mkdir -p ~/.vim/rundata/backup >/dev/null 2>&1
endif

set backupdir=~/.vim/rundata/backup/
set backup

" Save your swp files to a less annoying place than the current directory.
" If you have .vim-swap in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/swap, ~/tmp or .
if isdirectory($HOME . '/.vim/rundata/swap') == 0
  :silent !mkdir -p ~/.vim/rundata/swap >/dev/null 2>&1
endif
set directory=~/.vim/rundata/swap//,~/tmp//,.

" viminfo stores the the state of your previous editing session
"set viminfo+=n~/.viminfo

if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.vim/rundata/undo') == 0
    :silent !mkdir -p ~/.vim/rundata/undo > /dev/null 2>&1
  endif
  set undodir=~/.vim/rundata/undo//
  set undofile
endif

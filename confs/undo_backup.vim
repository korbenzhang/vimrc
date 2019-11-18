" Save your backups to a less annoying place than the current directory.
" If you have .vim-backup in the current directory, it'll use that.
" Otherwise it saves it to /uhome/.cache/vim/backup or . if all else fails.

if isdirectory('/uhome/.cache/vim/backup') == 0
  :silent !mkdir -p /uhome/.cache/vim/backup >/dev/null 2>&1
endif

set backupdir=/uhome/.cache/vim/backup/
set backup

" Save your swp files to a less annoying place than the current directory.
" If you have .vim-swap in the current directory, it'll use that.
" Otherwise it saves it to /uhome/.vim/swap, /uhome/tmp or .
if isdirectory('/uhome/.cache/vim/swap') == 0
  :silent !mkdir -p /uhome/.cache/vim/swap >/dev/null 2>&1
endif
set directory=/uhome/.cache/vim/swap/,/uhome/tmp/,.

" viminfo stores the the state of your previous editing session
"set viminfo+=n/uhome/.viminfo

if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then /uhome/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory('/uhome/.cache/vim/undo') == 0
    :silent !mkdir -p /uhome/.cache/vim/undo > /dev/null 2>&1
  endif
  set undodir=/uhome/.cache/vim/undo/
  set undofile
endif

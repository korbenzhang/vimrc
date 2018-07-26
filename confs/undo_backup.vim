" Save your backups to a less annoying place than the current directory.
" If you have .vim-backup in the current directory, it'll use that.
" Otherwise it saves it to ~/.cache/vim/backup or . if all else fails.

if isdirectory($HOME . '/.cache/vim/backup') == 0
  :silent !mkdir -p ~/.cache/vim/backup >/dev/null 2>&1
endif

set backupdir=~/.cache/vim/backup/
set backup

" Save your swp files to a less annoying place than the current directory.
" If you have .vim-swap in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/swap, ~/tmp or .
if isdirectory($HOME . '/.cache/vim/swap') == 0
  :silent !mkdir -p ~/.cache/vim/swap >/dev/null 2>&1
endif
set directory=~/.cache/vim/swap//,~/tmp//,.

" viminfo stores the the state of your previous editing session
"set viminfo+=n~/.viminfo

if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.cache/vim/undo') == 0
    :silent !mkdir -p ~/.cache/vim/undo > /dev/null 2>&1
  endif
  set undodir=~/.cache/vim/undo//
  set undofile
endif

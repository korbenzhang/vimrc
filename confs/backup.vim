" backupdir

set backup

let $backup_dir=expand('~/.vim/bakup/')

call InitDir($backup_dir)

set backupdir=$backup_dir


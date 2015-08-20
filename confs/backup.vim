" backupdir
" ====================================================
set backup

let $backup_dir=expand('~/rundata/vim/bak/')

call InitDir($backup_dir)

set backupdir=$backup_dir


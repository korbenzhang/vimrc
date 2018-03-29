echo "init vim ..."

REM windows and linux has different basic commands.
REM for example cp copy,  md mkdir, mv move.
REM and they have different args.
REM futher more, the directory separator is different too.
REM This is not convenient for developers, they have to 
REM create different scripts for two system.

echo "copy _vimrc to %HOME%\.vimrc"

copy %HOME%\.vim\_vimrc %HOME%\.vimrc



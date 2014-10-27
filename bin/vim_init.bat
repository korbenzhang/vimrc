echo "init vim ..."

echo "mkdir backup dir"
mkdir %HOME%\rundata\vim


echo "make swap dir"
mkdir %HOME%\rundata\vim

echo "copy _vimrc to %HOME%\.vimrc"
copy %HOME%\.vim\_vimrc %HOME%\.vimrc



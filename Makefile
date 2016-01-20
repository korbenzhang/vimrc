
usage:
	echo "make link | mkdirs | vundle-update ..."

link:
	rm ~/.vimrc -frv
	cp -f ~/.vim/_vimrc ~/.vimrc

mkdirs:
	sh ~/.vim/bin/unix_mkdirs.sh

mkdirs-win:
	~/.vim/bin/win_mkdirs.bat

vundle-update:
#    vim +PluginInstall +qall

vundle-install:



usage:
	echo "make link"

link:
	rm ~/.vimrc -frv
	cp -f ~/.vim/_vimrc ~/.vimrc

mkdirs:
	mkdir ~/.vim/views
	mkdir ~/.vim/undo
	mkdir ~/.vim/backup
	mkdir ~/.vim/swap

mkdirs-win:
	md views
	md undo
	md backup
	md swap


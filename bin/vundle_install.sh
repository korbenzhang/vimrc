#!/bin/sh

echo "Install Vundle"
echo ""

rm -frv ~/.vim/bundle/Vundle.vim

mkdir ~/.vim/bundle

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim



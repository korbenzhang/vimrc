#!/bin/sh

echo "Install Vundle"
echo ""

rm -frv $HOME/.vim/bundle/Vundle.vim

mkdir $HOME/.vim/bundle

git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim



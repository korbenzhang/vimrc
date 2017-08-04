#!/bin/sh

#'xbuild'
#'go'
#'tsserver'
#'node'
#'npm'
#'rustc'
#'cargo'
# gocode-completer


#update git repo
cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive

#build
cd ~/.vim/bundle/YouCompleteMe && ./install.py --gocode-completer



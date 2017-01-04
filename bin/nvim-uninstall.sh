#!/bin/sh

sudo add-apt-repository -r ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get remove neovim

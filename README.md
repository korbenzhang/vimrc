Korben Vim Configs
==================

This repository is for Vim customize. Using [Vundle](https://github.com/gmarik/Vundle.vim.git) to manage Vim plugins.

It works fine in linux, windows, msys, both Vim GUI and terminal version.

Install
-----

```bash

	git clone https://github.com/korbenzhang/vimrc.git ~/.vim

	cp -f ~/.vim/_vimrc ~/.vimrc


```

Startup vim and run `:PluginInstall`


Feathers
--------

* Startup very quickly.
* Install vundle automatically.
* Make swap and backup dir automatically.
* Golang support.
* More feathers to be found when using it.


Dependencies
------------

### ctags

Ubuntu: 

```
	sudo apt-get install ctags
```

Windows:

Copy misc/tools/ctags.exe to %PATH%.

### gotags

Golang code need `gotags`

You can install gotags with this command if you have install `go`.

```
	go get github.com/jstemmer/gotags
```

`$GOPATH/bin` should add to $PATH.


TODO
----

Not test for Cygiwn, MacOS.



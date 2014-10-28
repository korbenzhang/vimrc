Vimrc
==================

This repository is for Vim customize. Using [Vundle](https://github.com/gmarik/Vundle.vim.git) to manage Vim plugins.

It works fine in linux, windows, msys, both Vim GUI and terminal version.

More details for used plugins, see [this file](./used_bundles_vimrc)

Install
-----

```bash

	git clone https://github.com/korbenzhang/vimrc.git ~/.vim

	cp -f ~/.vim/_vimrc ~/.vimrc

```

after that, startup vim and run `:PluginInstall`

I have collect some snippets for snipMate plugin. To avoid conflict, snippets dir under snipMate should be removed.such as following command:

```
	cd ~/.vim/bundle/snipMate/ && mv snippets snippets_old
```


Feathers
--------

* Startup very quickly.
* Install vundle automatically.
* Make swap and backup dir automatically.
* Remind you to install some dependencies if not exists in you work mathine. eg: ctags
* Golang support.
* Bundle some very useful plugins, eg: Emmet, snipMate.
* Collect some useful snippets. see [snippets](./snippets/)
* Less dependencies. No python ruby needed.
* More feathers to be found when using it.


Dependencies
------------

### ctags

For Ubuntu: 

```
	sudo apt-get install ctags
```

For Windows:

You need to download ctags windows version.

### gotags

Golang code need `gotags`

You can install gotags with this command if you have install `go`.

```
	go get github.com/jstemmer/gotags
```

Don't forget add `$GOPATH/bin` to $PATH.


TODO
----

Not test for Cygiwn.



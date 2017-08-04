REM update and build YCM

REM update git repo
cd /home/.vim/bundle/YouCompleteMe && git submodule update --init --recursive

REM build
cd /home/.vim/bundle/YouCompleteMe && python2 install.py --gocode-completer


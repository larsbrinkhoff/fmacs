#!/bin/sh

FORTH=https://github.com/larsbrinkhoff/lbForth

git clone $FORTH
cd lbForth
export M32=-m32
sh -e test/install-deps.sh install_linux
make TARGET=x86 OS=linux
sudo make install TARGET=x86 OS=linux

#!/bin/bash

set -e

cd /tmp
[[ -f v8.0.12.12.tar.gz ]] || wget https://github.com/vim/vim/archive/v8.0.1212.tar.gz
tar xvf v8.0.1212.tar.gz
cd vim-8.0.1212
export CPPFLAGS="-I${HOME}/local/include -I${HOME}/local/include/ncurses"
export LDFLAGS="-L${HOME}/local/include -L${HOME}/local/include/ncurses -L${HOME}/local/lib"
./configure --prefix=${HOME}/local && \
make && make install



#!/bin/bash

bash configure --prefix=$PREFIX \
    --enable-shared \
    --disable-opengl
make
make install


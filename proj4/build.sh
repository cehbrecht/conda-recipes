#!/bin/bash

./configure --prefix=$PREFIX \
    --enable-shared
make
make install

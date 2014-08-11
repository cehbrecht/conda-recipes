#!/bin/bash

./configure --prefix=$PREFIX \
     	--with-x=no\
	--enable-R-shlib \
	--with-readline=no \
        --with-cairo \
        --with-libpng \
        --with-jpeglib \
	--with-tcl-config=$PREFIX/lib/tclConfig.sh \
	--with-tk-config=$PREFIX/lib/tkConfig.sh
make
make install

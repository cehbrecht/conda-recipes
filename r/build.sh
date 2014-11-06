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

sed -i -e "s/lib64/lib/g" $PREFIX/lib64/pkgconfig/*

if [ $ARCH = "64" ]; then
    mv $PREFIX/lib64/pkgconfig/* $PREFIX/lib/pkgconfig/
    rmdir $PREFIX/lib64/pkgconfig
    mv $PREFIX/lib64/* $PREFIX/lib/
fi

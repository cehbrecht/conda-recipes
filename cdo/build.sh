#!/bin/bash

./configure --prefix=$PREFIX \
    --enable-shared \
    --with-jasper=$PREFIX \
    --with-grib_api=$PREFIX \
    --with-netcdf=$PREFIX \
    --with-proj=$PREFIX
make
make install


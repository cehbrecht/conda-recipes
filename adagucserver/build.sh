#!/bin/bash

export CPPFLAGS="-I$PREFIX/include -I$PREFIX/include/libxml2 -I$PREFIX/include/cairo -I$PREFIX/include/freetype2"
export LDFLAGS="-L$PREFIX/lib/"

cd hclasses
rm  -f *.o
rm -f *.a
make -j4

if [ -f hclasses.a ]
  then
  echo "[OK] hclasses have succesfully been compiled."
  else
    echo "[FAILED] hclasses compilation failed"
    exit 1;
  fi

cd ../CCDFDataModel
rm -f *.o
rm -f *.a
make -j4


if [ -f CCDFDataModel.a ]
  then
  echo "[OK] CCDFDataModel has been succesfully compiled."
  else
    echo "[FAILED] CCDFDataModel compilation failed"
    exit 1;
  fi
  
cd ../adagucserverEC
rm -f *.o
rm -f adagucserver
rm -f h5ncdump
make -j4


if [ -f adagucserver ]
  then
  echo "[OK] ADAGUC has been succesfully compiled."
   else
     echo "[FAILED] ADAGUC compilation failed"
     exit 1;
fi


#test -d $PREFIX/bin || mkdir $PREFIX/bin/
cp adagucserver $PREFIX/bin/
cp h5ncdump $PREFIX/bin/
echo "[OK] Everything is installed in the ./bin directory"

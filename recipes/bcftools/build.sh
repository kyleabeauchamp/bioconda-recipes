#!/bin/sh

export CPPFLAGS="-I$PREFIX/include"
export LDFLAGS="-L$PREFIX/lib"

cd htslib*
./configure CPPFLAGS="-DHAVE_LIBDEFLATE" LIBS='-ldeflate' --prefix=$PREFIX --enable-libcurl CPPFLAGS="-I$PREFIX/include" LDFLAGS="-L$PREFIX/lib"
make
cd ..

./configure CPPFLAGS="-DHAVE_LIBDEFLATE" LIBS='-ldeflate' --prefix=$PREFIX --enable-libcurl CPPFLAGS="-I$PREFIX/include" LDFLAGS="-L$PREFIX/lib"
make prefix=$PREFIX CPPFLAGS=$CPPFLAGS LDFLAGS=$LDFLAGS
make prefix=$PREFIX CPPFLAGS=$CPPFLAGS LDFLAGS=$LDFLAGS plugins install

#!/bin/bash

./configure CPPFLAGS="-DHAVE_LIBDEFLATE" LIBS='-ldeflate'  --prefix=$PREFIX --enable-libcurl CFLAGS="-I$PREFIX/include" LDFLAGS="-L$PREFIX/lib"
make install prefix=$PREFIX

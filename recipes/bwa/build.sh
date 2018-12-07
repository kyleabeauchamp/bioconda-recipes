#!/bin/bash

export C_INCLUDE_PATH=${PREFIX}/include
export LIBRARY_PATH=${PREFIX}/lib
export CXX_FLAGS="-std=c++11 -pthread -msse4.1"
make
mkdir -p $PREFIX/bin
cp bwa $PREFIX/bin
cp xa2multi.pl $PREFIX/bin
cp qualfa2fq.pl $PREFIX/bin

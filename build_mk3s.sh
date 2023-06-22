#!/bin/bash

# automatically setup dependencies
./utils/bootstrap.py

if [ ! -d "build" ]; then
    mkdir build || exit 1
fi
cd build || exit 2

cmake .. -G Ninja -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=../cmake/AvrGcc.cmake -DFW_VARIANTS=1_75mm_MK3S-EINSy10a-E3Dv6full
ninja

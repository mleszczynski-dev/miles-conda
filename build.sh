#!/bin/bash

build_type="release"

rm -rf ./build-$build_type
rm -rf ./install-$build_type

which cmake
cmake -S . \
      -B ./build-$build_type \
      -DCMAKE_BUILD_TYPE=$build_type \
      -DCMAKE_INSTALL_PREFIX=${PREFIX}
cmake --build ./build-$build_type/ -j ${CPU_COUNT}
cmake --install ./build-$build_type/

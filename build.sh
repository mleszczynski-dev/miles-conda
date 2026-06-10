#!/bin/bash

echo "Building... pwd: $(pwd)"

which g++
which cmake

src_dir="cpp"
build_type="release"

rm -rf ./build-$build_type
rm -rf ./install-$build_type

cmake -S ./$src_dir/ -B ./build-$build_type -G Ninja -DCMAKE_BUILD_TYPE=$build_type -DCMAKE_INSTALL_PREFIX=./install-$build_type
cmake --build ./build-$build_type/ -j 6
cmake --install ./build-$build_type/


# Copyright 2024
# Author: Ayvar Aleksiev

## Run program on Linux

# From source folder run command to install dependent packages
# Install both release and debug package version, so we can build in Debug/Release

conan install . -s build_type=Release -s compiler.cppstd=23 --output-folder=build-x64/conan --build=missing
conan install . -s build_type=Debug -s compiler.cppstd=23 --output-folder=build-x64/conan --build=missing

pushd ./build-x64

cmake -S .. -B . -D CMAKE_TOOLCHAIN_FILE=./conan/conan_toolchain.cmake -D CMAKE_BUILD_TYPE=Release
echo "---Start compilation---"
make
# make test
# BUILD_FOLDER$ ./output/undo-redo-test


## Configure ninja compilation
# cmake -S .. -B . -G "Ninja" -D CMAKE_TOOLCHAIN_FILE=./conan/conan_toolchain.cmake -D CMAKE_BUILD_TYPE=Debug

# echo "Start compilation"
# ninja
# ninja test

# Another option for compilation
# cmake --build ./build-x64 --config Release
# ctest -C Release

popd 

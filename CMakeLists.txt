# Copyright 2024
# Author: Ayvar Aleksiev

cmake_minimum_required(VERSION 3.22.1)

project(
  undo-redo
  VERSION 1.0
  LANGUAGES CXX)

message(STATUS "Configuring ${CMAKE_PROJECT_NAME} project...")

if (NOT DEFINED CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 23)
endif()

# Set executable output and libraries to a specific path
SET(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/output")
SET(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/output")


include(CTest) # Do I need this actually. Do I need 'make test'

add_subdirectory(source) 
add_subdirectory(tests)


####### MISCELLANEOUS #######
#Before that:
# install pip to manage python packages.
# apt install pip
# pip install conan

#conan what works:
#              $ conan profile detect --force
#              $ conan profile path default
# - You should change to use gnu23 -> compiler.cppstd=gnu23
# SORUCE FOLDER$ conan install . --output-folder=build-x64/conan --build=missing
# --profile=./conan_profile.txt
#  BUILD_FOLDER$ cmake -S .. -B . -D CMAKE_TOOLCHAIN_FILE=./conan/conan_toolchain.cmake -D CMAKE_BUILD_TYPE=Release
#  BUILD_FOLDER$ cmake -S .. -B . -D CMAKE_TOOLCHAIN_FILE=./conan/conan_toolchain.cmake -D CMAKE_BUILD_TYPE=Release -DCPPCHECK=1   # WITH CPPCHECK
# BUILD_FOLDER$ make
# BUILD_FOLDER$ make test


# -----------------
# apt install libgtest-dev  // without conan
# apt install libc-bin  // for ldd command

# CC=clang CXX=clang++ cmake -S . -B build

##
# apt-get install ninja-build
# cmake -S . -B . -G "Ninja" -D CMAKE_TOOLCHAIN_FILE=./conan/conan_toolchain.cmake -D CMAKE_BUILD_TYPE=Release
# set(CMAKE_GENERATOR "Ninja" CACHE INTERNAL "" FORCE) in code
# ninja or ninja test

#Visual studio 2022
# cmake -S .. -B . -G "Visual Studio 17 2022" -D CMAKE_TOOLCHAIN_FILE=./conan/conan_toolchain.cmake -D CMAKE_BUILD_TYPE=Release
#Set undo-redo-test as Startup rpoject and 'RUN'

## Other ways to add c++ 23 standard
# if(__WINDOWS_MSVC)
#   set(CMAKE_CXX_FLAGS "/std:c++latest")
# else()
#   set(CMAKE_CXX_FLAGS "-std=c++23")
#   add_compile_options(-std=c++23)
# endif()

## Other way to add cpp files:
# file(GLOB SOURCES "src/*.cpp")


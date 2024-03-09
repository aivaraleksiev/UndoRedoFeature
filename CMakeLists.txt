# Copyright 2024
# Author: Ayvar Aleksiev

cmake_minimum_required(VERSION 3.22.1)

project(
  undo-redo
  VERSION 1.0
  LANGUAGES CXX)

message(STATUS "Configuring ${CMAKE_PROJECT_NAME} project...")



# Download automatically, you can also just copy the conan.cmake file
if(NOT EXISTS "${CMAKE_BINARY_DIR}/conan.cmake")
   message(STATUS "Downloading conan.cmake from https://github.com/conan-io/cmake-conan")
   file(DOWNLOAD "https://raw.githubusercontent.com/conan-io/cmake-conan/master/conan.cmake"
                  "${CMAKE_BINARY_DIR}/conan.cmake")
endif()

include(${CMAKE_BINARY_DIR}/conan.cmake)


message(STATUS "===============================: ${CONAN_GENERATORS}")

conan_cmake_run(REQUIRES
                  gtest/1.14.0
                BASIC_SETUP
                BUILD
                missing
                GENERATORS
                  CMakeDeps
                  CMakeToolchain
                )




# Include the conan-generated file to setup paths
#include(${CMAKE_SOURCE_DIR}/cmake/conanbuildinfo.cmake)
#conan_basic_setup()


if (NOT DEFINED CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 23)
endif()

# Set executable output and libraries to a specific path
SET(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/output")
SET(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/output")

include(CTest)

add_subdirectory(source) 
add_subdirectory(tests)

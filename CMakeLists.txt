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


add_subdirectory(source) 

include(CTest)

if (BUILD_TESTING)
  enable_testing()
  add_subdirectory(tests)
endif()

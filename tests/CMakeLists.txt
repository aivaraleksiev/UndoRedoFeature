# Copyright 2024
# Author: Ayvar Aleksiev

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_BINARY_DIR})
list(APPEND CMAKE_PREFIX_PATH ${CMAKE_CURRENT_BINARY_DIR})

include(${CMAKE_BINARY_DIR}/conan.cmake)

# TODO: In another PR please use the desired settings
conan_cmake_autodetect(settings)

conan_cmake_install(PATH_OR_REFERENCE ${CMAKE_CURRENT_SOURCE_DIR}/conanfile.txt
                    BUILD missing
                    REMOTE conancenter
                    OUTPUT_FOLDER ${CMAKE_BINARY_DIR}/tests
                    SETTINGS ${settings})

find_package(GTest 1.14.0 REQUIRED)

add_executable(undo-redo-test UndoRedo-gtests.cpp)

target_link_libraries(undo-redo-test PUBLIC undo-redo-lib GTest::gtest_main)

add_test(NAME UndoRedoUnitTests COMMAND undo-redo-test)

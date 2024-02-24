# Copyright 2024
# Author: Ayvar Aleksiev

find_package(GTest REQUIRED)

add_executable(undo-redo-test UndoRedo-gtests.cpp)

target_link_libraries(undo-redo-test PUBLIC undo-redo-lib GTest::gtest_main)

add_test(NAME UndoRedoUnitTests COMMAND undo-redo-test)

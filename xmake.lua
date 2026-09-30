-- Copyright 2026
-- Author: Ayvar Aleksiev

set_project("undo-redo")
set_version("1.0.0")

-- Compiler / language settings
set_languages("c++23")
set_toolchains("clang")
set_warnings("all")

-- Build modes
add_rules("mode.debug", "mode.release", "mode.releasedbg")
set_defaultmode("releasedbg")

-- External dependencies. Download/build GoogleTest automatically
add_requires("gtest 1.17.0", {configs = {main = true, gmock = false}})

-- Static library
target("undo-redo-lib")
    set_kind("shared")
    add_defines("UNDO_REDO_SHARED", {public = true})
    add_defines("UNDO_REDO_BUILDING")
    -- Source files
    add_files("source/*.cpp")
    add_headerfiles("include/*.h")
    -- Public headers
    add_includedirs("include", {public = true})


-- Test executable
target("undo-redo-test")
    set_kind("binary")
    add_files("tests/*.cpp")
    add_includedirs("include")
    add_deps("undo-redo-lib")
    add_packages("gtest")
    add_tests("UndoRedoUnitTests")


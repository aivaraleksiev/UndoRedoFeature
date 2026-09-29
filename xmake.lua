set_project("UndoRedo Feature")
set_version("1.0.0")

-- Compiler / language settings
set_languages("c++23")
set_toolchains("clang")
set_warnings("all")

-- Build modes
add_rules("mode.debug", "mode.release", "mode.releasedbg")
set_defaultmode("releasedbg")

-- External dependencies. Download/build GoogleTest automatically
add_requires("gtest 1.17.0")


------------------------------------------------------------
-- Static library
------------------------------------------------------------

target("core")

    set_kind("static")

    -- Source files
    add_files("src/core/*.cpp")

    -- Public headers
    add_includedirs("include", {public = true})

    -- Example preprocessor definition
    add_defines("MY_PROJECT_CORE")

    -- External packages used by this target
    --
    -- add_packages("fmt")
------------------------------------------------------------


-- Main executable
target("unroredo_app")

    set_kind("binary")

    -- Application sources
    add_files("src/main.cpp")
    add_files("src/app/*.cpp")

    -- Header search path
    add_includedirs("include")

    -- Link our internal library
    add_deps("core")

    -- External dependencies
    add_packages("gtest")    


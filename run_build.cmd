@REM From source folder run command to install dependent packages
@REM Install both release and debug package version, so we can build in Debug/Release

conan install . -s build_type=Release -s compiler.cppstd=23 --output-folder=build-x64\conan --build=missing
conan install . -s build_type=Debug -s compiler.cppstd=23 --output-folder=build-x64\conan --build=missing

pushd .\build-x64\

@REM Configure Visual Studio project
cmake -S .. -B . -G "Visual Studio 17 2022" -D CMAKE_TOOLCHAIN_FILE=.\conan\conan_toolchain.cmake -D CMAKE_BUILD_TYPE=Release

popd
REM Start Compilation
cmake --build .\build-x64 --config Release

# Run tests
# ctest -C Release

msg * /server:localhost "Look for undo-redo.sln in build folder. Make undo-redo-test as a Startup Project. Build and Run!"

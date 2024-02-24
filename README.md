# UndoRedoFeature

[Linux GCC Build CI](https://github.com/aivaraleksiev/UndoRedoFeature/blob/main/.github/workflows/Linux-action.yml)

## Summary
This implementation enables undo/redo functionality in your application. The idea of this project is to add undo/redo functionality to your objects with minimum additional implementation logic in your classes.

## Goals
- The developer must be provided with an interface to control the undo/redo operations on an object.
- The developer must be able to call undo/redo from a global place in a program which will affect operations on all live variables in the application.

## Code structure and Usage
### Foundation layer
**UndoRedoInterface**  
**UndoRedoState**  
**UndoRedoCommandManager**  
These classes are the foundations of the undo/redo functionality. 
### Usage
**UndoRedoString**  
This is a high level class that typically a developer would define in order to use the undo/redo functionality. <br>
You can find more examples of usage in the unit tests in `tests` directory.

## Build project
### Linux
- Install <br>
  &nbsp;&nbsp; **gcc** >= 11.0 <br>
  &nbsp;&nbsp; **Cmake** >= 3.22 <br>
  &nbsp;&nbsp; **pip** (Python >= 3.10) <br>
  &nbsp;&nbsp; **Conan** >= 2.0 <br> <br>
For **Ubuntu** run from terminal <br>
 &nbsp;&nbsp; `apt install -y build-essential cmake make ninja-build pip` <br>
 &nbsp;&nbsp; `pip install conan` <br>
 &nbsp;&nbsp; `conan profile detect --force` <br>
 &nbsp;&nbsp; `conan profile path default` - For reference to check where it is located.
- **<ins>Build and Run project</ins>** <br>
 &nbsp; From source folder execute **run_build.sh** script. 

### Windows
- Have Visual Studio 2022
- Install <br>
  &nbsp;&nbsp; **Cmake** >= 3.22 <br>
  &nbsp;&nbsp; **Conan** >= 2.0 <br>
  &nbsp;&nbsp; **pip** (Python >= 3.10)
- Run from terminal <br>
 &nbsp;&nbsp; `conan profile detect --force` <br>
 &nbsp;&nbsp; `conan profile path default` - For reference to check where it is located.
- **<ins>Build and Run project</ins>** <br>
 &nbsp; From source folder execute **run_build.cmd** script. 
  
## Tools
- CppCheck - A tool for static C/C++ code analysis.

## LICENSE
BSD 4-clause License
[![license](https://img.shields.io/badge/License-BSD%204--clause-blue)](https://github.com/aivaraleksiev/UndoRedoFeature/blob/main/LICENSE)


# UndoRedoFeature

[![license](https://img.shields.io/badge/License-BSD%204--clause-blue)](https://github.com/aivaraleksiev/UndoRedoFeature/blob/main/LICENSE)

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
This is a high level class that typically a developer would define in order to use the undo/redo functionality.
You can find more examples of usage in the unit tests in `src` directory.

## Todo
- Add max undo operations limiter. 

## Build project
### Linux
- Install **gcc >= 11.0**, **Cmake >= 3.22**, **pip (Python >= 3.10)**, **Conan >= 2.0**
### Windows
- Have Visual Studio 2022
- Install **Cmake >= 3.22**, **pip (Python >= 3.10)**, **Conan >= 2.0**

## Tools
- CppCheck - A tool for static C/C++ code analysis.

## LICENSE
BSD 4-clause License


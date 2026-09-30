# UndoRedoFeature

[![Linux Clang build](https://github.com/aivaraleksiev/UndoRedoFeature/actions/workflows/Linux-action.yml/badge.svg)](https://github.com/aivaraleksiev/UndoRedoFeature/actions/workflows/Linux-action.yml)
[![Windows Clang build](https://github.com/aivaraleksiev/UndoRedoFeature/actions/workflows/Windows-action.yml/badge.svg)](https://github.com/aivaraleksiev/UndoRedoFeature/actions/workflows/Windows-action.yml)
[![CodeQL Analysis](https://github.com/aivaraleksiev/UndoRedoFeature/actions/workflows/CodeQL-Analysis-action.yml/badge.svg)](https://github.com/aivaraleksiev/UndoRedoFeature/actions/workflows/CodeQL-Analysis-action.yml)

[//]: <> (Comment: BSD 4-clause License.)
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
This is a high level class that typically a developer would define in order to use the undo/redo functionality. <br>
You can find more examples of usage in the unit tests in `tests` directory.

## Build project

Install:
- **Xmake** 2.8.5 or newer
- **Clang** compiler with C++23 support.
- Make sure `clang++` and `xmake` are on your `PATH`.
- On Windows, also install the Visual Studio C++ build tools and Windows SDK.

From the repository root, run the same commands on Windows and Linux:

```sh
xmake
xmake test
xmake run undo-redo-test
```

## Tools
- CppCheck - A tool for static C/C++ code analysis.


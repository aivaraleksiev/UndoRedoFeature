// Copyright 2024 - 2026
// Author: Ayvar Aleksiev

#pragma once

#if defined(_WIN32) && defined(UNDO_REDO_SHARED)
    #if defined(UNDO_REDO_BUILDING)
        #define UNDO_REDO_API __declspec(dllexport)
    #else
        #define UNDO_REDO_API __declspec(dllimport)
    #endif
#else
    #define UNDO_REDO_API
#endif

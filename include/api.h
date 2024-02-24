// Copyright 2024
// Author: Ayvar Aleksiev

#pragma once

#ifdef _WIN32
#define UNDO_REDO_API __declspec(dllexport)
#else
#define UNDO_REDO_API 
#endif

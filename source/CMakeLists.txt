# Copyright 2024
# Author: Ayvar Aleksiev

# Note that headers are optional, and do not affect add_library, but they will not
# show up in IDEs unless they are listed in add_library.
file(GLOB HEADER_LIST CONFIGURE_DEPENDS "${PROJECT_SOURCE_DIR}/include/*.h")

# Make an automatic library - will be static or dynamic based on user setting
add_library(undo-redo-lib SHARED UndoRedoCommandManager.cpp UndoRedoString.cpp ${HEADER_LIST})

# We need this directory, and users of our library will need it too
target_include_directories(undo-redo-lib PUBLIC ${PROJECT_SOURCE_DIR}/include)

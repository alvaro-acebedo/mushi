# Disable the use of compiler-specific extensions (e.g. CMake passes -std=gnu++14 to GCC on Linux)
# Now it is ensured -std::c++xx and prevented the use of non-portable compiler extensions
set(CMAKE_CXX_EXTENSIONS OFF)

# Require out-of-source builds
file(TO_CMAKE_PATH "${PROJECT_BINARY_DIR}/CMakeLists.txt" LOC_PATH)
if (EXISTS "${LOC_PATH}")
    message(FATAL_ERROR "You cannot build in a source directory (or any directory with a CMakeLists.txt file). Please use a build subdirectory instead. Feel free to remove CMakeCache.txt and CMakeFiles.")
endif()

# Support for folders in IDEs
set_property(GLOBAL PROPERTY USE_FOLDERS ON)

# Compile features
list(APPEND PROJECT_COMPILE_FEATURES cxx_std_17)

# Project version number defined in CMake into C++ headers
configure_file(
    "${PROJECT_SOURCE_DIR}/include/${PROJECT_NAME}/Version.h.in"
    "${PROJECT_BINARY_DIR}/include/${PROJECT_NAME}/Version.h"
    )

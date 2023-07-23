# Disable the use of compiler-specific extensions (e.g. CMake passes -std=gnu++14 to GCC on Linux)
# Now it is ensured -std::c++xx and prevented the use of non-portable compiler extensions
set(CMAKE_CXX_EXTENSIONS OFF)

# Support for folders in IDEs
set_property(GLOBAL PROPERTY USE_FOLDERS ON)

# Compile features
list(APPEND PROJECT_COMPILE_FEATURES cxx_std_17)

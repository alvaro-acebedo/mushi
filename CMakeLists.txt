# Specify the minimum version of CMake that can run this script
cmake_minimum_required(VERSION 3.22)

# Project name and version
project(mushi
    VERSION 0.0.1
    DESCRIPTION "Mushi's Undefined Scope and Humble Intent."
    LANGUAGES CXX)

# Request C++ 17 standard features
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Compilation settings
include(cmake/compilation_settings.cmake)

# Executable code
add_subdirectory(apps)

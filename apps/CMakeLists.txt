add_executable(${PROJECT_NAME} main.cpp)

# Using predefined features to compile the target (see: cmake/compilation_settings.cmake)
target_compile_features(${PROJECT_NAME} PRIVATE ${PROJECT_COMPILE_FEATURES})

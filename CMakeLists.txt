cmake_minimum_required(VERSION 3.15)
project(libimobiledevice)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_C_STANDARD 99)

# Assuming libimobiledevice is a library, change add_executable to add_library
add_library(libimobiledevice SHARED  # or STATIC, depending on your needs
    source_file1.cpp
    source_file2.cpp
    # Add more source files as needed
)

# Link libraries if needed
target_link_libraries(libimobiledevice
    other_library  # Replace with actual libraries needed
)

cmake_minimum_required(VERSION 3.15)
project(libimobiledevice)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_C_STANDARD 99)

# Add your source files here
add_executable(libimobiledevice main.cpp)

# Link libraries if needed
target_link_libraries(libimobiledevice
    libimobiledevice  # Replace with actual libraries needed
    other_library
)

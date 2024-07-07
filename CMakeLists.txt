cmake_minimum_required(VERSION 3.15)
project(libimobiledevice)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_C_STANDARD 99)

# Set paths to manually installed libraries
set(LIBPLIST_INCLUDE_DIR "path_to_libplist_include")
set(LIBIMOBILEDEVICE_INCLUDE_DIR "path_to_libimobiledevice_include")
set(LIBIMOBILEDEVICE_LIB_DIR "path_to_libimobiledevice_lib")

# Add include directories
include_directories(${LIBPLIST_INCLUDE_DIR})
include_directories(${LIBIMOBILEDEVICE_INCLUDE_DIR})

# Add library directories
link_directories(${LIBIMOBILEDEVICE_LIB_DIR})

# Add your source files here
add_executable(libimobiledevice main.cpp)

# Link libraries
target_link_libraries(libimobiledevice libimobiledevice)

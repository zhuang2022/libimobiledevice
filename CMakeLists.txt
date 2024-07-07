cmake_minimum_required(VERSION 3.10)

# 设置项目名称和语言
project(libimobiledevice VERSION 1.0 LANGUAGES C CXX)

# 指定 C++ 标准
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 查找依赖项
find_package(PkgConfig REQUIRED)
pkg_check_modules(PLIST REQUIRED libplist)
pkg_check_modules(LIBIMOBILEDEVICE REQUIRED libimobiledevice)

# 包含头文件路径
include_directories(${PLIST_INCLUDE_DIRS})
include_directories(${LIBIMOBILEDEVICE_INCLUDE_DIRS})

# 添加源文件
file(GLOB_RECURSE SOURCES "src/*.cpp" "src/*.c" "include/*.h")

# 确保源文件存在
if(NOT SOURCES)
    message(FATAL_ERROR "No source files found.")
endif()

# 添加可执行文件
add_executable(libimobiledevice ${SOURCES})

# 链接必要的库
target_link_libraries(libimobiledevice ${PLIST_LIBRARIES} ${LIBIMOBILEDEVICE_LIBRARIES})

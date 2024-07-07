cmake_minimum_required(VERSION 3.10)

# 设置项目名称和语言
project(libimobiledevice VERSION 1.0 LANGUAGES C CXX)

# 指定 C++ 标准
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 添加源文件
file(GLOB_RECURSE SOURCES "src/*.cpp" "src/*.c" "include/*.h")

# 确保源文件存在
if(NOT SOURCES)
    message(FATAL_ERROR "No source files found.")
endif()

# 添加可执行文件
add_executable(libimobiledevice ${SOURCES})

# 链接必要的库（示例）
# target_link_libraries(libimobiledevice <your-libraries>)

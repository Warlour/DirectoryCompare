cmake_minimum_required(VERSION 3.0.0)
project(DirChecksum VERSION 0.1.0)
include_directories(
    E:/src/vcpkg/installed/x64-windows/include
    dirchecksum/headers
)

add_executable(DirChecksum dirchecksum/dirchecksum.cpp)

target_sources(${PROJECT_NAME} PRIVATE 
    dirchecksum/shaf.cpp
    dirchecksum/dirchecksum.cpp
)

target_link_options(${PROJECT_NAME} PRIVATE -static-libgcc -static-libstdc++)

# Warning levels
target_compile_options( ${PROJECT_NAME} PRIVATE -Wall -Wextra -pedantic)

TARGET_LINK_LIBRARIES(DirChecksum
    openssl
)
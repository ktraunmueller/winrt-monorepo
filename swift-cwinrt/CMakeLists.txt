cmake_minimum_required(VERSION 3.29)

project(CWinRT LANGUAGES C)

add_library(CWinRT STATIC
    Sources/CWinRT/shim.c
)

# Include public headers
target_include_directories(CWinRT PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/Sources/CWinRT/include
)
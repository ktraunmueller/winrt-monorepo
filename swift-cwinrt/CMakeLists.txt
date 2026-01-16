cmake_minimum_required(VERSION 3.29)

project(CWinRT LANGUAGES C)

set(CMAKE_STATIC_LIBRARY_PREFIX "lib")

add_library(CWinRT STATIC
    Sources/CWinRT/shim.c
)

set_target_properties(CWinRT PROPERTIES
    Swift_MODULE_NAME CWinRT
)

# Include public headers
target_include_directories(CWinRT PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/Sources/CWinRT/include
)
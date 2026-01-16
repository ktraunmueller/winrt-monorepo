cmake_minimum_required(VERSION 3.29)

project(UWP LANGUAGES Swift)

file(GLOB_RECURSE UWP_SRC
    Sources/UWP/Generated/*.swift
    Sources/UWP/UWP.swift
)

set(CMAKE_STATIC_LIBRARY_PREFIX "lib")

add_library(UWP STATIC ${UWP_SRC})

set_target_properties(UWP PROPERTIES
    Swift_MODULE_NAME UWP
)

target_compile_options(UWP PRIVATE 
    -swift-version 5
)

# Include path if needed
# target_include_directories(UWP PUBLIC
#     ${CMAKE_CURRENT_SOURCE_DIR}/Sources/UWP/Generated
# )

target_link_libraries(UWP
    PUBLIC
        CWinRT
        WindowsFoundation
)

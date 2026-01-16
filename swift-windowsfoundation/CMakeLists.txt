cmake_minimum_required(VERSION 3.29)

project(WindowsFoundation LANGUAGES Swift)

file(GLOB_RECURSE WINDOWSFOUNDATION_SRC
    Sources/WindowsFoundation/Generated/*.swift
)

set(CMAKE_STATIC_LIBRARY_PREFIX "lib")

add_library(WindowsFoundation STATIC ${WINDOWSFOUNDATION_SRC})

set_target_properties(WindowsFoundation PROPERTIES
    Swift_MODULE_NAME WindowsFoundation
)

target_compile_options(WindowsFoundation PRIVATE 
    -swift-version 5
)

# Add include paths if needed
# target_include_directories(WindowsFoundation PUBLIC
#     ${CMAKE_CURRENT_SOURCE_DIR}/Sources/WindowsFoundation/Generated
# )

target_link_libraries(WindowsFoundation 
    PUBLIC 
        CWinRT
)

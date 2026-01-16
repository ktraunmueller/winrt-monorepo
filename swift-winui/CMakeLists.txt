cmake_minimum_required(VERSION 3.29)

project(WinUI LANGUAGES Swift)

file(GLOB_RECURSE WINUI_SRC
    Sources/WinUI/Application/*.swift
    Sources/WinUI/Generated/*.swift
)

set(CMAKE_STATIC_LIBRARY_PREFIX "lib")

add_library(WinUI STATIC ${WINUI_SRC})

set_target_properties(WinUI PROPERTIES
    Swift_MODULE_NAME WinUI
)

target_compile_options(WinUI PRIVATE 
    -swift-version 5
)

# Include path for generated modules (optional)
# target_include_directories(WinUI PUBLIC
#     ${CMAKE_CURRENT_SOURCE_DIR}/Sources/WinUI/Generated
# )

target_link_libraries(WinUI
    PUBLIC
        CWinRT
        UWP
        WindowsFoundation
        WinAppSDK
)
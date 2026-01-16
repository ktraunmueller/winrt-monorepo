cmake_minimum_required(VERSION 3.29)

project(Win2D LANGUAGES Swift)

file(GLOB_RECURSE WIN2D_SRC
    Sources/Win2D/Generated/*.swift
)

set(CMAKE_STATIC_LIBRARY_PREFIX "lib")

add_library(Win2D STATIC ${WIN2D_SRC})

set_target_properties(Win2D PROPERTIES
    Swift_MODULE_NAME Win2D
)

target_compile_options(Win2D PRIVATE 
    -swift-version 5
)

# Include generated headers (if needed)
# target_include_directories(Win2D PUBLIC
#     ${CMAKE_CURRENT_SOURCE_DIR}/Sources/Win2D/Generated
# )

target_link_libraries(Win2D
    PUBLIC
        CWinRT
        UWP
        WindowsFoundation
        WinUI
)

# Detect architecture
if(CMAKE_SYSTEM_PROCESSOR MATCHES "^(AMD64|x86_64)$")
    set(WIN2D_ARCH "x64")
elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "^(ARM64|aarch64)$")
    set(WIN2D_ARCH "arm64")
else()
    message(FATAL_ERROR "Unsupported architecture: ${CMAKE_SYSTEM_PROCESSOR}")
endif()

# Copy native Win2D runtime if required at runtime
add_custom_command(TARGET Win2D POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_if_different
        ${CMAKE_CURRENT_SOURCE_DIR}/Sources/Win2D/NativeBinaries/runtimes/win-${WIN2D_ARCH}/native/Microsoft.Graphics.Canvas.dll
        $<TARGET_FILE_DIR:Win2D>
)

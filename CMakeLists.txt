cmake_minimum_required(VERSION 3.29)

project(WinAppSDK LANGUAGES C Swift)

#
# C Library: CWinAppSDK
#
add_library(CWinAppSDK STATIC
    Sources/CWinAppSDK/delayloadhelper.c
)

# Include headers for C target
target_include_directories(CWinAppSDK PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/Sources/CWinAppSDK/include
    ${CMAKE_CURRENT_SOURCE_DIR}/Sources/CWinAppSDK/nuget/include
)

# Detect architecture and set library/bin subfolder
if(CMAKE_SYSTEM_PROCESSOR MATCHES "^(AMD64|x86_64)$")
    set(WINAPPSDK_ARCH_DIR "x64")
elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "^(ARM64|aarch64)$")
    set(WINAPPSDK_ARCH_DIR "arm64")
else()
    message(FATAL_ERROR "Unsupported architecture: ${CMAKE_SYSTEM_PROCESSOR}")
endif()

set(APP_SDK_BASE ${CMAKE_CURRENT_SOURCE_DIR}/Sources/CWinAppSDK/nuget)
set(APP_SDK_LIB_DIR ${APP_SDK_BASE}/lib/${WINAPPSDK_ARCH_DIR})
set(APP_SDK_BIN_DIR ${APP_SDK_BASE}/bin/${WINAPPSDK_ARCH_DIR})

# Link .lib files from nuget
target_link_libraries(CWinAppSDK
    PUBLIC
        ${APP_SDK_LIB_DIR}/Microsoft.WindowsAppRuntime.Bootstrap.lib
        ${APP_SDK_LIB_DIR}/Microsoft.WindowsAppRuntime.lib
        ${APP_SDK_LIB_DIR}/MRM.lib
        ${APP_SDK_LIB_DIR}/DWriteCore.lib
)

# TODO I guess this would be preferred over hardcoded solution (WindowsAppRuntimeInitializer.swift)
# Optional: delay load Bootstrap.dll
# target_link_options(CWinAppSDK PRIVATE "/DELAYLOAD:Microsoft.WindowsAppRuntime.Bootstrap.dll")

# Copy DLL to output directory (Windows-only)
add_custom_command(TARGET CWinAppSDK POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_if_different
        ${APP_SDK_BIN_DIR}/Microsoft.WindowsAppRuntime.Bootstrap.dll
        $<TARGET_FILE_DIR:CWinAppSDK>
)

#
# Swift Library: WinAppSDK
#
file(GLOB_RECURSE WINAPPSDK_SRC
    Sources/WinAppSDK/Generated/*.swift
    Sources/WinAppSDK/Initialize.swift
)

add_library(WinAppSDK STATIC ${WINAPPSDK_SRC})

set_target_properties(WinAppSDK PROPERTIES
    Swift_MODULE_NAME WinAppSDK
)

target_compile_options(WinAppSDK PRIVATE 
    -swift-version 5
)

target_include_directories(WinAppSDK PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/Sources/WinAppSDK/Generated
)

target_link_libraries(WinAppSDK
    PUBLIC
        CWinRT
        CWinAppSDK
        UWP
        WindowsFoundation
)

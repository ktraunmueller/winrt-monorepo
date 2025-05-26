cmake_minimum_required(VERSION 3.29)
project(WinRT LANGUAGES C Swift)

add_subdirectory(swift-cwinrt)
add_subdirectory(swift-windowsfoundation)
add_subdirectory(swift-uwp)
add_subdirectory(swift-windowsappsdk)
add_subdirectory(swift-winui)
add_subdirectory(swift-win2d)
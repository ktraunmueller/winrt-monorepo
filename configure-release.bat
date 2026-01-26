:: Note: run in a developer command prompt
cmake -DCMAKE_BUILD_TYPE=Release ^
    -S . -B build -G "Ninja" ^
    -DSWIFT_TOOLCHAIN_PATH=%SWIFT_TOOLCHAIN_PATH% ^
    -DCMAKE_Swift_COMPILER=%CMAKE_Swift_COMPILER% 

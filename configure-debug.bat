:: Note: run in a developer command prompt
cmake -DCMAKE_BUILD_TYPE=Debug ^
    -S . -B build -G "Ninja" ^
    -DSWIFT_TOOLCHAIN_PATH="E:/Swift/Toolchains/0.0.0+Asserts/usr" ^
    -DCMAKE_Swift_COMPILER="E:/Swift/Toolchains/0.0.0+Asserts/usr/bin/swiftc.exe"
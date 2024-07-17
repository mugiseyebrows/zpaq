mkdir build
pushd build
    cmake -G "MinGW Makefiles" -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=C:/zpaq -D CMAKE_INSTALL_BINDIR="." ..
    cmake --build .
    cmake --install .
popd
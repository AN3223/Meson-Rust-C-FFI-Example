#!/bin/sh

echo "test.sh: Running Meson..."
meson build-debug -D release=false
echo ""
meson build-release -D release=true
# The -D argument is how options are passed to Meson


echo "test.sh: Building 'build-debug' with ninja..."
cd build-debug
ninja
echo "test.sh: Running 'build-debug' executables..."
echo "cexe:"
./cexe
echo "rsexe:"
./rsexe


echo ""
cd ..


echo "test.sh: Building 'build-release' with ninja..."
cd build-release
ninja
echo "test.sh: Running 'build-release' executables..."
echo "cexe:"
./cexe
echo "rsexe:"
./rsexe


echo ""
cd ..


echo "test.sh: Tearing down..."
rm -rf build-debug
rm -rf build-release
rm -rf cargo_rust_from_c/target

echo "test.sh: Done!"

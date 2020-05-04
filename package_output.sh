#!/bin/bash
set -xe

mkdir -p android-freetype2
cd android-freetype2

cp ../libfreetype2/build/outputs/aar/libfreetype2-debug.aar .
cp ../libfreetype2/build/outputs/aar/libfreetype2-release.aar .

unzip libfreetype2-debug.aar -d debug
unzip libfreetype2-release.aar -d release

mkdir -p include
cp -r ../libfreetype2/src/main/freetype2/include/* include/.

cd ..
tar -czvf android-freetype2.tar.gz android-freetype2


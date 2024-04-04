rem @echo off
cd raylib/src/
mingw32-make PLATFORM=PLATFORM_ANDROID
cd ../../raylib-game-template/src/
mingw32-make PLATFORM=PLATFORM_ANDROID
cd ../..
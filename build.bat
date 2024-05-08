@echo off

set ndk=C:/Android/android-ndk-r26d
set sdk=C:/Android/android-sdk
set jdk=C:/open-jdk/jdk-22
set apiVersion=34
set buildTools=%sdk%/build-tools/34.0.0

cd raylib/src/
mingw32-make PLATFORM=PLATFORM_ANDROID ANDROID_API_VERSION=%apiVersion% ANDROID_NDK=%ndk%

if %errorlevel% neq 0 goto End

cd ../../raylib-game-template/src/
mingw32-make PLATFORM=PLATFORM_ANDROID ANDROID_API_VERSION=%apiVersion% JAVA_HOME=%jdk% ANDROID_HOME=%sdk% ANDROID_NDK=%ndk% ANDROID_BUILD_TOOLS=%buildTools%

:End
cd ../..
:: This is probably not working properly
if %errorlevel% neq 0 exit /b %errorlevel%

echo SUCCESS!!
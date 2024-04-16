@echo off

cd raylib/src/
mingw32-make PLATFORM=PLATFORM_ANDROID

if %errorlevel% neq 0 goto End

cd ../../raylib-game-template/src/
mingw32-make PLATFORM=PLATFORM_ANDROID

:End
cd ../..
if %errorlevel% neq 0 exit /b %errorlevel%

echo SUCCESS!!
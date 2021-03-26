@echo off

echo Generating C-style Win32 APIs and tests
call dart %~dp0manual_gen\win32api.dart
call dart %~dp0metadata\generate_win32.dart
echo.

echo Generating COM classes and tests from Windows metadata
call dart %~dp0metadata\generate_com_apis.dart
echo.

echo Generating Windows Runtime classes from Windows metadata
call dart %~dp0metadata\generate_winrt_apis.dart %~dp0..\lib\src\com
echo.

echo Formatting generated source code
call dart format %~dp0..\lib\src
call dart format %~dp0..\test\api_test.dart
call dart format %~dp0..\test\struct_test.dart
call dart format %~dp0..\test\com
echo.

echo Running tests
if "%1"=="--no-test" goto end

:dart_test
call dart test

:end
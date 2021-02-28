@echo off

echo Generating C-style Win32 APIs and tests
call dart %~dp0win32\win32api.dart
call dart %~dp0win32\generate_ffi_jsonproto.dart 
call dart %~dp0metadata\win32.dart %~dp0..\lib\src\generated
call dart %~dp0win32\generate_tests.dart 
echo.

echo Generating COM classes from Windows metadata
call dart %~dp0metadata\com.dart %~dp0..\lib\src\generated
echo.

echo Generating Windows Runtime classes from Windows metadata
call dart %~dp0metadata\winrt.dart %~dp0..\lib\src\generated
echo.

echo Formatting generated source code
call dart format %~dp0..\lib\src
call dart format %~dp0..\test\api_test.dart
call dart format %~dp0..\test\struct_test.dart
call dart format %~dp0..\test\com
echo.

if "%1"=="--notest" goto end

echo Running tests
call dart test

:end
@echo off

echo Generating C-style Win32 APIs and tests
call dart --enable-experiment=non-nullable %~dp0win32\generate_ffi_files.dart 
call dart --enable-experiment=non-nullable %~dp0win32\generate_tests.dart 
echo.

echo Generating COM classes
call dart --enable-experiment=non-nullable %~dp0generate\generate.dart %~dp0generate\com %~dp0..\lib\src\generated
echo.

echo Generating Windows Runtime classes from IDL
call dart --enable-experiment=non-nullable %~dp0generate\generate.dart %~dp0generate\winrt %~dp0..\lib\src\generated
echo.

echo Generating Windows Runtime classes from inspection
call dart --enable-experiment=non-nullable %~dp0winmd\winmd.dart %~dp0..\lib\src\generated
echo.

echo Formatting generated source code
call dart --enable-experiment=non-nullable format %~dp0..\lib\src
call dart --enable-experiment=non-nullable format %~dp0..\test\api_test.dart
echo.

echo Running tests
call dart --enable-experiment=non-nullable pub run test
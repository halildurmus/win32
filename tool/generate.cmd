@echo off

if "%1"=="--help" goto help

echo Generating C-style Win32 APIs and tests
call dart %~dp0manual_gen\create_struct_sizes.dart
call dart %~dp0manual_gen\win32api.dart
call dart %~dp0metadata\generate_win32.dart
echo.

if "%1"=="--win32-only" goto format

echo Generating COM classes and tests from Windows metadata
call dart %~dp0metadata\generate_com_apis.dart
echo.

echo Generating Windows Runtime classes from Windows metadata
call dart %~dp0metadata\generate_winrt_apis.dart %~dp0..\lib\src\com
echo.

:format
echo Formatting generated source code
call dart format %~dp0..\lib\src
call dart format %~dp0..\test\api_test.dart
call dart format %~dp0..\test\struct_test.dart
call dart format %~dp0..\test\com
echo.

if "%1"=="--win32-only" goto end
if "%1"=="--no-test" goto end

:dart_test
echo Running tests
call dart test

goto end

:help
echo generate -- Auto-generates various Windows API classes from metadata.
echo.
echo Useful flags
echo  --win32-only  Generate just the Win32 classes
echo  --no-test     Generate all classes but don't test
echo.
echo Running the command without any flags generates all classes and runs all tests.
echo.

:end
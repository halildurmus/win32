@echo off

if "%1"=="--help" goto help

echo Generating struct sizes
call dart %~dp0metadata\generate_struct_sizes_cpp.dart
echo.

echo Generating APIs and tests
call dart %~dp0metadata\generate.dart
echo.

echo Generating COM classes and tests from Windows metadata
call dart %~dp0metadata\generate_com_apis.dart
echo.

echo Generating Windows Runtime classes from Windows metadata [DISABLED]
rem call dart %~dp0metadata\generate_winrt_apis.dart %~dp0..\lib\src\com
echo.

:format
echo Formatting generated source code
call dart format %~dp0..\lib\src
call dart format %~dp0..\test\api_test.dart
call dart format %~dp0..\test\struct_test.dart
call dart format %~dp0..\test\com
echo.

if "%1"=="--no-test" goto end

:dart_test
echo Running tests
call dart test

goto end

:help
echo generate -- Auto-generates various Windows API classes from metadata.
echo.
echo Useful flags
echo  --no-test     Generate all classes but don't test
echo.
echo Running the command without any flags generates all classes and runs all tests.
echo.

:end
@echo off

if "%1"=="--help" goto help

echo Loading...

rem Save current directory and start from the win32\tool\generator folder
pushd %~dp0generator
call dart bin\generate.dart

if "%1"=="--no-test" goto end

:dart_test
echo Running generator tests...
call dart test

echo Running generated file tests...
cd ..\..
rem Now should be in win32
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
rem Restore old working directory
popd
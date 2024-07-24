@echo off

if "%1"=="--help" goto help

echo Loading...

rem Save current directory and start from the packages\generator folder
pushd %~dp0..\packages\generator
call dart bin\generate.dart

if "%1"=="--no-test" goto end

:dart_test
echo Running generator tests...
call dart test

echo Running generated file tests...
cd ..\win32
rem Now should be in win32

rem Single threaded increases chances of detecting a segfault test failure
call dart test --concurrency=1 --test-randomize-ordering-seed=random

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

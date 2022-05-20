@echo off

if "%1"=="--help" goto help

echo Loading...
call dart %~dp0generator\bin\generate.dart

if "%1"=="--no-test" goto end

:dart_test
echo Running tests...
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
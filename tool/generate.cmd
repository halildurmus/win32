@echo off

echo Generating C-style Win32 APIs and tests
call dart %~dp0win32\win32api.dart
call dart %~dp0metadata\win32.dart %~dp0..\lib\src\generated
echo.

echo Temporarily reset bthprops.dart (https://github.com/microsoft/win32metadata/issues/296)
git restore %~dp0..\lib\src\bthprops.dart
echo.

echo Generating COM classes and tests from Windows metadata
call dart %~dp0metadata\generate_com_apis.dart
echo.

echo Temporarily reset IProvideClassInfo_test.dart (https://github.com/microsoft/win32metadata/issues/290)
git restore %~dp0..\test\com\IProvideClassInfo_test.dart
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

echo Running tests
if "%1"=="--use-dart-test" goto dart_test
call flutter test
goto end

:dart_test
call dart test

:end
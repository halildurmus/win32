@echo off

echo Generating C-style Win32 APIs
call dart %~dp0win32\typeread.dart 

echo Generating COM classes
call dart %~dp0generate\generate.dart %~dp0generate\com %~dp0..\lib\src\generated

echo Generating Windows Runtime classes from IDL
call dart %~dp0generate\generate.dart %~dp0generate\winrt %~dp0..\lib\src\generated

echo Generating Windows Runtime classes from inspection
call dart %~dp0winmd\winmd.dart %~dp0..\lib\src\generated

echo Formatting generated source code
call dart format %~dp0..\lib\src
call dart format %~dp0..\lib\src\generated
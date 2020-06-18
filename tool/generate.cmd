@echo off

echo Generating COM classes
dart %~dp0generate\generate.dart %~dp0generate\com %~dp0..\lib\src\generated

echo Generating Windows Runtime classes
dart %~dp0generate\generate.dart %~dp0generate\winrt %~dp0..\lib\src\generated
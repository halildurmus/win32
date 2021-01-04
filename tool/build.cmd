@echo off
echo Compiling Dart executables...
call dart compile exe example\console.dart -o example\bin\console.exe
call dart compile exe example\hello.dart -o example\bin\hello.exe
call dart compile exe example\notepad\notepad.dart -o example\bin\dartnote.exe
call dart compile exe example\tetris\main.dart -o example\bin\tetris.exe
call dart compile exe example\taskdialog.dart -o example\bin\taskdialog.exe
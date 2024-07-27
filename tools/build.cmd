@echo off
echo Compiling Dart executables...

call dart compile exe examples\notepad\notepad.dart -o examples\bin\dartnote.exe
call dart compile exe examples\tetris\main.dart -o examples\bin\tetris.exe
call dart compile exe examples\hello.dart -o examples\bin\hello.exe
call dart compile exe examples\snake.dart -o examples\bin\snake.exe
call dart compile exe examples\taskdialog.dart -o examples\bin\taskdialog.exe

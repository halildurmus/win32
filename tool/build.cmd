@echo off
call dart2native example\console.dart -o example\bin\console.exe
call dart2native example\hello.dart -o example\bin\hello.exe
call dart2native example\msgbox.dart -o example\bin\msgbox.exe
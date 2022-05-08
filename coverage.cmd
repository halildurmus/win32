@echo off
call dart test --coverage=coverage
call dart pub global run coverage:format_coverage --lcov --check-ignore --in=coverage --out=lcov.info --packages=.packages --report-on=lib
echo Coverage generated!
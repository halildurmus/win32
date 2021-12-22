@echo off
dart test --coverage=coverage
dart pub global run coverage:format_coverage --lcov --check-ignore --in=coverage --out=lcov.info --packages=.packages --report-on=lib
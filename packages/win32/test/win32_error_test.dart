@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
  group('WIN32_ERROR', () {
    test('valid WIN32_ERROR values do not throw assertion error', () {
      // Minimum valid WIN32_ERROR value.
      check(() => const WIN32_ERROR(0)).returnsNormally();
      // Maximum valid WIN32_ERROR value.
      check(() => const WIN32_ERROR(0xFFFFFFFF)).returnsNormally();
    });

    test('invalid WIN32_ERROR values throw assertion error', () {
      check(() => WIN32_ERROR(0xFFFFFFFF + 1))
          .throws<AssertionError>()
          .has((e) => e.message, 'message')
          .equals('Invalid WIN32_ERROR value: 4294967296');
      check(() => WIN32_ERROR(-1))
          .throws<AssertionError>()
          .has((e) => e.message, 'message')
          .equals('Invalid WIN32_ERROR value: -1');
    });

    test('isOk returns true for success WIN32_ERROR codes', () {
      check(ERROR_SUCCESS.isOk).isTrue();
      check(NO_ERROR.isOk).isTrue();
    });

    test('isError returns true for failure WIN32_ERROR codes', () {
      check(ERROR_ACCESS_DENIED.isError).isTrue();
      check(ERROR_FILE_NOT_FOUND.isError).isTrue();
    });

    test('onSuccess executes operation for success WIN32_ERROR', () {
      check(ERROR_SUCCESS.onSuccess(() => 'Success')).equals('Success');
    });

    test('onSuccess throws WindowsException for failure WIN32_ERROR', () {
      check(
          () => ERROR_ACCESS_DENIED.onSuccess(() => 'Success'),
        ).throws<WindowsException>()
        ..has((e) => e.hr, 'hr').equals(ERROR_ACCESS_DENIED.toHRESULT())
        ..has((e) => e.message, 'message').equals('Access is denied.');
    });
  });
}

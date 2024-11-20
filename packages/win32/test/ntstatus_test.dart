@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
  group('NTSTATUS', () {
    test('valid NTSTATUS values do not throw assertion error', () {
      // Zero is a valid NTSTATUS value.
      check(() => const NTSTATUS(0)).returnsNormally();
      // Minimum valid NTSTATUS value.
      check(() => const NTSTATUS(-0x80000000)).returnsNormally();
      // Maximum valid NTSTATUS value.
      check(() => const NTSTATUS(0x7FFFFFFF)).returnsNormally();
    });

    test('invalid NTSTATUS values throw assertion error', () {
      check(() => NTSTATUS(0x80000000))
          .throws<AssertionError>()
          .has((e) => e.message, 'message')
          .equals(
            'Invalid NTSTATUS value: 2147483648. '
            'It must be a valid 32-bit signed integer.',
          );
      check(() => NTSTATUS(-0x80000001))
          .throws<AssertionError>()
          .has((e) => e.message, 'message')
          .equals(
            'Invalid NTSTATUS value: -2147483649. '
            'It must be a valid 32-bit signed integer.',
          );
    });

    test('isOk returns true for success NTSTATUS codes', () {
      check(STATUS_SUCCESS.isOk).isTrue();
      check(STILL_ACTIVE.isOk).isTrue();
    });

    test('isError returns true for failure NTSTATUS codes', () {
      check(STATUS_NOT_FOUND.isError).isTrue();
      check(STATUS_UNSUCCESSFUL.isError).isTrue();
    });

    test('onSuccess executes operation for success NTSTATUS', () {
      check(STATUS_SUCCESS.onSuccess(() => 'Success')).equals('Success');
    });

    test('onSuccess throws WindowsException for failure NTSTATUS', () {
      check(
          () => STATUS_NOT_FOUND.onSuccess(() => 'Success'),
        ).throws<WindowsException>()
        ..has((e) => e.hr, 'hr').equals(STATUS_NOT_FOUND.toHRESULT())
        ..has((e) => e.message, 'message').equals('The object was not found.');
    });
  });
}

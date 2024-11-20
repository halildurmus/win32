@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

// Run these tests a large number of times to try and identify memory leaks or
// buffer overruns.
const testRuns = 100;

void main() {
  group('HRESULT', () {
    test('valid HRESULT values do not throw assertion error', () {
      // Zero is a valid HRESULT value.
      check(() => const HRESULT(0)).returnsNormally();
      // Minimum valid HRESULT value.
      check(() => const HRESULT(-0x80000000)).returnsNormally();
      // Maximum valid HRESULT value.
      check(() => const HRESULT(0x7FFFFFFF)).returnsNormally();
    });

    test('invalid HRESULT values throw assertion error', () {
      check(() => HRESULT(0x80000000))
          .throws<AssertionError>()
          .has((e) => e.message, 'message')
          .equals(
            'Invalid HRESULT value: 2147483648. '
            'It must be a valid 32-bit signed integer.',
          );
      check(() => HRESULT(-0x80000001))
          .throws<AssertionError>()
          .has((e) => e.message, 'message')
          .equals(
            'Invalid HRESULT value: -2147483649. '
            'It must be a valid 32-bit signed integer.',
          );
    });

    test('message for predefined HRESULT values', () {
      for (var i = 0; i < testRuns; i++) {
        check(E_INVALIDARG.message).equals('The parameter is incorrect.');
        check(
          HRESULT.fromNt(STATUS_NOT_FOUND).message,
        ).equals('The object was not found.');
        check(
          HRESULT.fromWin32(ERROR_CANCELLED).message,
        ).equals('The operation was canceled by the user.');
      }
    });

    test('isOk returns true for success HRESULT codes', () {
      check(S_OK.isOk).isTrue();
      check(S_FALSE.isOk).isTrue();
    });

    test('isError returns true for failure HRESULT codes', () {
      check(E_ACCESSDENIED.isError).isTrue();
      check(E_FAIL.isError).isTrue();
    });

    test('onSuccess executes operation for success HRESULT', () {
      check(S_OK.onSuccess(() => 'Success')).equals('Success');
    });

    test('onSuccess throws WindowsException for failure HRESULT', () {
      check(
          () => E_POINTER.onSuccess(() => 'Success'),
        ).throws<WindowsException>()
        ..has((e) => e.hr, 'hr').equals(E_POINTER)
        ..has((e) => e.message, 'message').equals('Invalid pointer');
    });

    test('message handles NTSTATUS codes correctly', () {
      for (var i = 0; i < testRuns; i++) {
        final hr = HRESULT.fromNt(STATUS_NOT_FOUND);
        check(hr.message).equals('The object was not found.');
      }
    });

    test('message handles Win32 error codes correctly', () {
      for (var i = 0; i < testRuns; i++) {
        final hr = HRESULT.fromWin32(ERROR_ACCESS_DENIED);
        check(hr.message).equals('Access is denied.');
      }
    });

    test('message handles formatting and CRLF stripping', () {
      // Ensure no CRLF at the end.
      check(E_INVALIDARG.message.endsWith('\r\n')).isFalse();
    });
  });
}

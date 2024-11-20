@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
  group('WindowsException', () {
    test('Win32 error produces correct message', () {
      final exception = WindowsException(ERROR_INVALID_HANDLE.toHRESULT());
      check(exception.message).equals('The handle is invalid.');
      check(
        exception.toString(),
      ).equals('WindowsException HRESULT(0x80070006): The handle is invalid.');
    });

    test('COM error produces correct message', () {
      const exception = WindowsException(CO_E_ALREADYINITIALIZED);
      check(exception.message).equals('CoInitialize has already been called.');
      check(exception.toString()).equals(
        'WindowsException HRESULT(0x800401F1): CoInitialize has already been called.',
      );
    });

    test('NTSTATUS error produces correct message', () {
      final exception = WindowsException(STATUS_NOT_FOUND.toHRESULT());
      check(exception.message).equals('The object was not found.');
      check(exception.toString()).equals(
        'WindowsException HRESULT(0xD0000225): The object was not found.',
      );
    });

    test('HRESULT with default message', () {
      const exception = WindowsException(E_FAIL);
      check(exception.message).equals('Unspecified error');
      check(
        exception.toString(),
      ).equals('WindowsException HRESULT(0x80004005): Unspecified error');
    });

    test('custom error message takes precedence', () {
      const customMessage = 'Custom access denied message.';
      final exception = WindowsException(
        ERROR_ACCESS_DENIED.toHRESULT(),
        message: customMessage,
      );
      check(exception.message).equals(customMessage);
      check(exception.toString()).equals(
        'WindowsException HRESULT(0x80070005): Custom access denied message.',
      );
    });
  });
}

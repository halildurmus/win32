@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  test('Win32 error', () {
    expect(WindowsException(ERROR_INVALID_HANDLE).toString(),
        endsWith('The handle is invalid.'));
  });

  test('Invalid argument error', () {
    expect(WindowsException(E_INVALIDARG).toString(),
        endsWith('The parameter is incorrect.'));
  });

  test('COM error CO_E_ALREADYINITIALIZED', () {
    expect(WindowsException(CO_E_ALREADYINITIALIZED).toString(),
        endsWith('CoInitialize has already been called.'));
  });
}

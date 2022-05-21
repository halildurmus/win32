@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';

// Test the WinRT phone number formatter object to make sure overrides,
// properties and methods are working correctly.

void main() {
  if (isWindowsRuntimeAvailable()) {
    late IPhoneNumberFormatter formatter;

    setUp(() {
      winrtInitialize();

      final object = CreateObject(
          'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter',
          IID_IPhoneNumberFormatter);
      formatter = IPhoneNumberFormatter(object);
    });

    test('Formatter is a materialized object', () {
      expect(formatter.trustLevel, equals(TrustLevel.baseTrust));
      expect(
          formatter.runtimeClassName,
          equals(
              'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter'));
    });

    test('Format a US number', () {
      final phone = formatter.FormatString('+14255550123');
      expect(phone, equals('+1 425-555-0123'));
    });

    tearDown(() {
      free(formatter.ptr);
      winrtUninitialize();
    });
  }
}

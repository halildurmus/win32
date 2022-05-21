@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/src/winrt/phonenumberformatter.dart';
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
      final phone = formatter.FormatString('4255550123');
      expect(phone, equals('(425) 555-0123'));
    });

    test('Create a formatter for a different region code', () {
      // Generated from UK "numbers for use in TV and radio drama"
      // https://www.ofcom.org.uk/phones-telecoms-and-internet/information-for-industry/numbering/numbers-for-drama
      final ukFormatter = PhoneNumberFormatter.TryCreate('GB');
      final london = ukFormatter.FormatString('02079460123');
      expect(london, equals('020 7946 0123'));
      final reading = ukFormatter.FormatString('01184960987');
      expect(reading, equals('0118 496 0987'));
    });

    tearDown(() {
      free(formatter.ptr);
      winrtUninitialize();
    });
  }
}

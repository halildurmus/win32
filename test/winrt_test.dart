@TestOn('windows')

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  test('WinRT simple test', () {
    winrtInitialize();

    final object =
        CreateObject('Windows.Globalization.Calendar', IID_ICalendar);
    final calendar = ICalendar(object.cast());

    expect(calendar.Year, greaterThanOrEqualTo(2020));
    free(object);
    winrtUninitialize();
  });

  test('String to HSTRING conversion', () {
    final string = 'This is a string to convert.\n';
    final hstring = convertToHString(string);

    final string2 = convertFromHString(hstring);
    expect(string, equals(string2));

    WindowsDeleteString(hstring.address);
  });
  test('String to HSTRING conversion -- more complex', () {
    final string = '''
Some emojis: 💼📃👩🏾‍💻🛀🏼🤗
Some Hangul: 이력서
Some accented text: Résumé
    ''';
    final hstring = convertToHString(string);

    final string2 = convertFromHString(hstring);
    expect(string, equals(string2));

    WindowsDeleteString(hstring.address);
  });
}

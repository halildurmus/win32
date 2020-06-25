@TestOn('windows')

import 'package:test/test.dart';

import '../tool/winmd/utils.dart';
import '../tool/winmd/windowsmetadatafile.dart';

void main() {
  test('List all tokens in a file', () {
    final file = metadataFileContainingType('Windows.Globalization.Calendar');
    final winmdFile = WindowsMetadataFile(file);
    expect(
        winmdFile.typeDefs.length, equals(104)); // at least, on Windows 10 2004
  });

  test('Find a specific WinMD token', () {
    final file =
        metadataFileContainingType('Windows.Globalization.ICalendarFactory');
    final winmdFile = WindowsMetadataFile(file);

    final type = winmdFile.findTypeDef('Windows.Globalization.Calendar');
    expect(type.token, equals(0x02000003));
  });

  test('Get Calendar methods', () {
    final file =
        metadataFileContainingType('Windows.Globalization.CalendarIdentifiers');
    final winmdFile = WindowsMetadataFile(file);

    final winTypeDef = winmdFile.findTypeDef('Windows.Globalization.Calendar');
    final methods = winTypeDef.methods;

    expect(methods[8].methodName, equals('get_NumeralSystem'));
  });

  test('Calendar.HourAsPaddedString method properties', () {
    final file = metadataFileContainingType('Windows.Globalization.Calendar');
    final winmdFile = WindowsMetadataFile(file);

    final winTypeDef = winmdFile.findTypeDef('Windows.Globalization.Calendar');
    final methods = winTypeDef.methods;

    expect(methods[75].methodName, equals('HourAsPaddedString'));
    expect(methods[75].isPublic, isTrue);
    expect(methods[75].isPrivate, isFalse);
    expect(methods[75].isStatic, isFalse);
    expect(methods[75].isFinal, isTrue);
    expect(methods[75].isVirtual, isTrue);
    expect(methods[75].isSpecialName, isFalse);
    expect(methods[75].isRTSpecialName, isFalse);
  });
}

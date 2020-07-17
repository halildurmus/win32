@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';

import '../tool/winmd/mdFile.dart';
import '../tool/winmd/utils.dart';

final CLDB_E_RECORD_NOTFOUND = 0x80131130.toSigned(32);

void main() {
  if (isWindowsRuntimeAvailable()) {
    test('List all tokens in a file', () {
      final file = metadataFileContainingType('Windows.Globalization.Calendar');
      final winmdFile = WinmdFile(file);
      expect(winmdFile.typeDefs.length,
          equals(104)); // at least, on Windows 10 2004
    });

    test('Find a specific WinMD token', () {
      final file =
          metadataFileContainingType('Windows.Globalization.ICalendarFactory');
      final winmdFile = WinmdFile(file);

      final type = winmdFile.findTypeDef('Windows.Globalization.Calendar');
      expect(type.token, equals(0x02000003));
    });

    test('Get Calendar methods', () {
      final file = metadataFileContainingType(
          'Windows.Globalization.CalendarIdentifiers');
      final winmdFile = WinmdFile(file);

      final winTypeDef =
          winmdFile.findTypeDef('Windows.Globalization.Calendar');
      final methods = winTypeDef.methods;

      expect(methods[8].methodName, equals('get_NumeralSystem'));
    });

    test('Calendar.HourAsPaddedString method properties', () {
      final file = metadataFileContainingType('Windows.Globalization.Calendar');
      final winmdFile = WinmdFile(file);

      final winTypeDef =
          winmdFile.findTypeDef('Windows.Globalization.Calendar');
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

    test('Calendar.HourAsPaddedString method params', () {
      final file = metadataFileContainingType('Windows.Globalization.Calendar');
      final winmdFile = WinmdFile(file);

      final winTypeDef =
          winmdFile.findTypeDef('Windows.Globalization.Calendar');
      final method = winTypeDef.findMethod('HourAsPaddedString');

      final parameters = method.parameters;
      expect(parameters.length, equals(2));
      expect(parameters[0].name, equals('result'));
      expect(parameters[1].name, equals('minDigits'));
    });

    test('findMethod lookup failure', () {
      final file = metadataFileContainingType('Windows.Globalization.Calendar');
      final winmdFile = WinmdFile(file);

      final winTypeDef =
          winmdFile.findTypeDef('Windows.Globalization.Calendar');

      expect(
          () => winTypeDef.findMethod('HourAsPaddedString2'),
          throwsA(isA<COMException>().having(
              (error) => error.hr, 'HRESULT', equals(CLDB_E_RECORD_NOTFOUND))));
    });

    test('Find interfaces returns sane results', () {
      final type = 'Windows.UI.Xaml.Controls.Button';
      final file = metadataFileContainingType(type);
      final winmdFile = WinmdFile(file);
      final winTypeDef = winmdFile.findTypeDef(type);

      final interfaces = winTypeDef.interfaces;
      expect(interfaces.length, equals(2));

      final interfaceNames = interfaces.map((element) => element.typeName);
      expect(interfaceNames, contains('Windows.UI.Xaml.Controls.IButton'));
      expect(interfaceNames,
          contains('Windows.UI.Xaml.Controls.IButtonWithFlyout'));
    });

    test('Interface GUID is correct', () {
      final file =
          metadataFileContainingType('Windows.Globalization.ICalendar');
      final winmdFile = WinmdFile(file);

      final winTypeDef =
          winmdFile.findTypeDef('Windows.Globalization.ICalendar');
      final guid = winTypeDef.guid;
      expect(guid, isNotNull);
      expect(guid, equals('{CA30221D-86D9-40FB-A26B-D44EB7CF08EA}'));
    });

    test('Interface is correctly identified', () {
      final file =
          metadataFileContainingType('Windows.Globalization.ICalendar');
      final winmdFile = WinmdFile(file);

      final winTypeDef =
          winmdFile.findTypeDef('Windows.Globalization.ICalendar');
      expect(winTypeDef.isInterface, isTrue);
      expect(winTypeDef.isClass, isFalse);
    });

    test('Class is correctly identified', () {
      final file = metadataFileContainingType('Windows.Globalization.Calendar');
      final winmdFile = WinmdFile(file);

      final winTypeDef =
          winmdFile.findTypeDef('Windows.Globalization.Calendar');
      expect(winTypeDef.isInterface, isFalse);
      expect(winTypeDef.isClass, isTrue);
    });
  }
}

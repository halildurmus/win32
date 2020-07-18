@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';

import '../tool/winmd/constants.dart';
import '../tool/winmd/enums.dart';
import '../tool/winmd/mdFile.dart';
import '../tool/winmd/utils.dart';

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

    test('Get IAsyncInfo methods', () {
      final file =
          metadataFileContainingType('Windows.Foundation.IPropertyValue');
      final winmdFile = WinmdFile(file);

      final winTypeDef = winmdFile.findTypeDef('Windows.Foundation.IAsyncInfo');
      final methods = winTypeDef.methods;

      expect(methods[0].methodName, equals('get_Id'));
      expect(methods[1].methodName, equals('get_Status'));
      expect(methods[2].methodName, equals('get_ErrorCode'));
      expect(methods[3].methodName, equals('Cancel'));
      expect(methods[4].methodName, equals('Close'));
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
    }, skip: "Can't yet parse entire Calendar class");

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

    test('Calendar.AddDays() method is correct', () {
      final type = 'Windows.Globalization.ICalendar';
      final file = metadataFileContainingType(type);
      final winmdFile = WinmdFile(file);

      final winTypeDef = winmdFile.findTypeDef(type);
      final method = winTypeDef.findMethod('AddDays');

      expect(method.isProperty, isFalse);
      expect(method.returnType.typeFlag.corType,
          equals(CorElementType.ELEMENT_TYPE_VOID));
      expect(method.parameters.length, equals(1));
      expect(method.parameters.first.typeFlag.corType,
          equals(CorElementType.ELEMENT_TYPE_I4));
      expect(method.parameters.first.name, equals('days'));
    });

    test('Calendar.YearAsString() method is correct', () {
      final type = 'Windows.Globalization.ICalendar';
      final file = metadataFileContainingType(type);
      final winmdFile = WinmdFile(file);

      final winTypeDef = winmdFile.findTypeDef(type);
      final method = winTypeDef.findMethod('YearAsString');

      expect(method.isProperty, isFalse);
      expect(method.returnType.typeFlag.corType,
          equals(CorElementType.ELEMENT_TYPE_STRING));
      expect(method.parameters.length, equals(0));
    });

    test('Calendar.MonthAsPaddedNumericString() method is correct', () {
      final type = 'Windows.Globalization.ICalendar';
      final file = metadataFileContainingType(type);
      final winmdFile = WinmdFile(file);

      final winTypeDef = winmdFile.findTypeDef(type);
      final method = winTypeDef.findMethod('MonthAsPaddedNumericString');

      expect(method.isProperty, isFalse);
      expect(method.returnType.typeFlag.corType,
          equals(CorElementType.ELEMENT_TYPE_STRING));
      expect(method.parameters.length, equals(1));
      expect(method.parameters.first.typeFlag.corType,
          equals(CorElementType.ELEMENT_TYPE_I4));
      expect(method.parameters.first.name, equals('minDigits'));
    });

    test('Calendar.SetToNow() method is correct', () {
      final type = 'Windows.Globalization.ICalendar';
      final file = metadataFileContainingType(type);
      final winmdFile = WinmdFile(file);

      final winTypeDef = winmdFile.findTypeDef(type);
      final method = winTypeDef.findMethod('SetToNow');

      expect(method.isProperty, isFalse);
      expect(method.returnType.typeFlag.corType,
          equals(CorElementType.ELEMENT_TYPE_VOID));
      expect(method.parameters.length, equals(0));
    });
    test('Calendar.Day get property is correct', () {
      final type = 'Windows.Globalization.ICalendar';
      final file = metadataFileContainingType(type);
      final winmdFile = WinmdFile(file);

      final winTypeDef = winmdFile.findTypeDef(type);
      final method = winTypeDef.findMethod('get_Day');

      expect(method.returnType.typeFlag.corType,
          equals(CorElementType.ELEMENT_TYPE_I4));
      expect(method.isSpecialName, isTrue);
      expect(method.isProperty, isTrue);
      expect(method.isSetProperty, isFalse);
      expect(method.isGetProperty, isTrue);
      expect(method.parameters.length, equals(0));
    });
  }
}

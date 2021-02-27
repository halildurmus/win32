@TestOn('windows')
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';
import 'package:win32/win32.dart';

void main() {
  if (isWindowsRuntimeAvailable()) {
    test('List all tokens in a file', () {
      final mdScope =
          MetadataStore.getScopeForType('Windows.Globalization.Calendar');

      // This is 99 on Windows Server 2019, 104 on Windows 10 2004. The exact
      // number is less critical than that this returns a sane result.
      expect(mdScope.typeDefs.length, greaterThan(50));
    });

    test('Find a specific WinMD token', () {
      final mdScope = MetadataStore.getScopeForType(
          'Windows.Globalization.ICalendarFactory');

      final type = mdScope['Windows.Globalization.Calendar']!;

      // The number token ID may change from build to build, but the highest
      // order byte should always be 0x02
      expect(type.token & 0x02000000, equals(0x02000000));
    });

    test('Get IAsyncInfo methods', () {
      final mdScope =
          MetadataStore.getScopeForType('Windows.Foundation.IPropertyValue');

      final winTypeDef = mdScope['Windows.Foundation.IAsyncInfo']!;
      final methods = winTypeDef.methods;

      expect(methods[0].methodName, equals('get_Id'));
      expect(methods[1].methodName, equals('get_Status'));
      expect(methods[2].methodName, equals('get_ErrorCode'));
      expect(methods[3].methodName, equals('Cancel'));
      expect(methods[4].methodName, equals('Close'));
    });

    test('Calendar.HourAsPaddedString method properties', () {
      final winTypeDef =
          MetadataStore.getMetadataForType('Windows.Globalization.Calendar')!;
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

    test('Find interfaces returns sane results', () {
      final winTypeDef =
          MetadataStore.getMetadataForType('Windows.UI.Xaml.Controls.Button')!;

      final interfaces = winTypeDef.interfaces;
      expect(interfaces.length, equals(2));

      final interfaceNames = interfaces.map((element) => element.typeName);
      expect(interfaceNames, contains('Windows.UI.Xaml.Controls.IButton'));
      expect(interfaceNames,
          contains('Windows.UI.Xaml.Controls.IButtonWithFlyout'));
    });

    test('Interface GUID is correct', () {
      final winTypeDef =
          MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

      final guid = winTypeDef.guid;
      expect(guid, isNotNull);
      expect(guid, equals('{CA30221D-86D9-40FB-A26B-D44EB7CF08EA}'));
    });

    test('Interface is correctly identified', () {
      final winTypeDef =
          MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

      expect(winTypeDef.isInterface, isTrue);
      expect(winTypeDef.isClass, isFalse);
    });

    test('Class is correctly identified', () {
      final winTypeDef =
          MetadataStore.getMetadataForType('Windows.Globalization.Calendar')!;

      expect(winTypeDef.isInterface, isFalse);
      expect(winTypeDef.isClass, isTrue);
    });

    test('Calendar.AddDays() method is correct', () {
      final winTypeDef =
          MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

      final method = winTypeDef.findMethod('AddDays')!;

      expect(method.isProperty, isFalse);
      expect(method.returnType.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_VOID));
      expect(method.parameters.length, equals(1));
      expect(method.parameters.first.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_I4));
      expect(method.parameters.first.name, equals('days'));
    });

    test('Calendar.YearAsString() method is correct', () {
      final winTypeDef =
          MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

      final method = winTypeDef.findMethod('YearAsString')!;

      expect(method.isProperty, isFalse);
      expect(method.returnType.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_STRING));
      expect(method.parameters.length, equals(0));
    });

    test('Calendar.MonthAsPaddedNumericString() method is correct', () {
      final winTypeDef =
          MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

      final method = winTypeDef.findMethod('MonthAsPaddedNumericString')!;

      expect(method.isProperty, isFalse);
      expect(method.returnType.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_STRING));
      expect(method.parameters.length, equals(1));
      expect(method.parameters.first.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_I4));
      expect(method.parameters.first.name, equals('minDigits'));
    });

    test('Calendar.SetToNow() method is correct', () {
      final winTypeDef =
          MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

      final method = winTypeDef.findMethod('SetToNow')!;

      expect(method.isProperty, isFalse);
      expect(method.returnType.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_VOID));
      expect(method.parameters.length, equals(0));
    });

    test('Calendar.SetToNow() calling convention is correct', () {
      final winTypeDef =
          MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

      final method = winTypeDef.findMethod('SetToNow')!;

      expect(method.callingConvention, equals('default instance '));
    });

    test('Calendar.Day getter property is correct', () {
      final winTypeDef =
          MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

      final method = winTypeDef.findMethod('get_Day')!;

      expect(method.returnType.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_I4));
      expect(method.isSpecialName, isTrue);
      expect(method.isProperty, isTrue);
      expect(method.isSetProperty, isFalse);
      expect(method.isGetProperty, isTrue);
      expect(method.parameters.length, equals(0));
    });

    test('Calendar.Day setter property is correct', () {
      final winTypeDef =
          MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

      final method = winTypeDef.findMethod('put_Day')!;

      expect(method.returnType.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_VOID));
      expect(method.isSpecialName, isTrue);
      expect(method.isProperty, isTrue);
      expect(method.isSetProperty, isTrue);
      expect(method.isGetProperty, isFalse);
      expect(method.parameters.length, equals(1));
      expect(method.parameters.first.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_I4));
    });

    test('Property setter for a class type is correct', () {
      final winTypeDef = MetadataStore.getMetadataForType(
          'Windows.Storage.Pickers.IFileOpenPicker')!;

      final method = winTypeDef.findMethod('put_ViewMode')!;

      expect(method.returnType.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_VOID));
      expect(method.isSpecialName, isTrue);
      expect(method.isProperty, isTrue);
      expect(method.isSetProperty, isTrue);
      expect(method.isGetProperty, isFalse);
      expect(method.parameters.length, equals(1));
      expect(method.parameters.first.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
      expect(method.parameters.first.typeIdentifier.name,
          equals('Windows.Storage.Pickers.PickerViewMode'));
    });

    test('Class valuetype is correctly identified', () {
      final winTypeDef = MetadataStore.getMetadataForType(
          'Windows.Storage.Pickers.IFileOpenPicker')!;

      final method = winTypeDef.findMethod('put_ViewMode')!;
      final classType = method.parameters.first.typeIdentifier;

      expect(TypeBuilder.isTypeValueType(classType), isTrue);
    });

    test('String parameters are accurately represented', () {
      final winTypeDef =
          MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

      final method = winTypeDef.findMethod('ChangeCalendarSystem')!;

      expect(method.parameters.first.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_STRING));
      expect(method.parameters.first.typeIdentifier.name, equals('string'));
      expect(method.isSpecialName, isFalse);
      expect(method.isProperty, isFalse);
      expect(method.isSetProperty, isFalse);
      expect(method.isGetProperty, isFalse);
    });

    test('Calendar.Clone return value is correct', () {
      final winTypeDef =
          MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

      final method = winTypeDef.findMethod('Clone')!;

      expect(method.parameters.length, equals(0));
      expect(method.returnType.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_CLASS));
      expect(method.returnType.typeIdentifier.name,
          equals('Windows.Globalization.Calendar'));
    });

    test('String array property return type is correct', () {
      final winTypeDef =
          MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

      final method = winTypeDef.findMethod('get_Languages')!;

      expect(method.parameters.length, equals(0));
      expect(method.returnType.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_GENERICINST));
      expect(method.returnType.typeIdentifier.name,
          equals('Windows.Foundation.Collections.IVectorView`1'));
      expect(method.returnType.typeIdentifier.typeArgs.length, equals(1));
      expect(method.returnType.typeIdentifier.typeArgs.first.corType,
          equals(CorElementType.ELEMENT_TYPE_STRING));
      expect(method.returnType.typeIdentifier.typeArgs.first.name,
          equals('string'));
    });

    test('Calendar.PeriodAsFullString overload is correctly represented', () {
      final winTypeDef =
          MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

      final methods =
          winTypeDef.methods.where((m) => m.methodName == 'PeriodAsString');
      expect(methods.length, equals(2));

      for (final method in methods) {
        final overloadName = method
            .attributeAsString('Windows.Foundation.Metadata.OverloadAttribute');
        expect(overloadName, isIn(['PeriodAsFullString', 'PeriodAsString']));
      }
    });

    test('Calendar.YearAsTruncatedString method is correct', () {
      final winTypeDef =
          MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

      final method = winTypeDef.findMethod('YearAsTruncatedString')!;

      expect(method.returnType.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_STRING));
      expect(method.isSpecialName, isFalse);
      expect(method.isProperty, isFalse);
      expect(method.parameters.length, equals(1));
      expect(method.parameters.first.name, equals('remainingDigits'));
      expect(method.parameters.first.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_I4));
    });

    test('Method with one parameter and return value is correct', () {
      final winTypeDef =
          MetadataStore.getMetadataForType('Windows.Globalization.Calendar')!;

      final method = winTypeDef.methods
          .where((m) => m.methodName == 'MonthAsString')
          .firstWhere((m) =>
              m.attributeAsString(
                  'Windows.Foundation.Metadata.OverloadAttribute') ==
              'MonthAsString');

      expect(method.returnType.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_STRING));
      expect(method.isSpecialName, isFalse);
      expect(method.isProperty, isFalse);
      expect(method.parameters.length, equals(1));
      expect(method.parameters.first.name, equals('idealLength'));
      expect(method.parameters.first.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_I4));
    });

    test('Method with multiple parameters and no return value is correct', () {
      final winTypeDef = MetadataStore.getMetadataForType(
          'Windows.Storage.Provider.CachedFileUpdater')!;

      final method = winTypeDef.findMethod('SetUpdateInformation')!;

      expect(method.returnType.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_VOID));
      expect(method.isProperty, isFalse);
      expect(method.parameters.length, equals(5));
      expect(method.parameters[0].typeIdentifier.name,
          equals('Windows.Storage.IStorageFile'));
      expect(method.parameters[0].name, equals('file'));
      expect(method.parameters[1].typeIdentifier.name, equals('string'));
      expect(method.parameters[1].typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_STRING));
      expect(method.parameters[1].name, equals('contentId'));
      expect(method.parameters[2].typeIdentifier.name,
          equals('Windows.Storage.Provider.ReadActivationMode'));
      expect(method.parameters[2].name, equals('readMode'));
      expect(method.parameters[3].typeIdentifier.name,
          equals('Windows.Storage.Provider.WriteActivationMode'));
      expect(method.parameters[3].name, equals('writeMode'));
      expect(method.parameters[4].typeIdentifier.name,
          equals('Windows.Storage.Provider.CachedFileOptions'));
      expect(method.parameters[4].name, equals('options'));
    });

    test('Method with generic return value is correct', () {
      final winTypeDef = MetadataStore.getMetadataForType(
          'Windows.Globalization.JapanesePhoneticAnalyzer')!;

      final method = winTypeDef.findMethod('GetWords')!;
      expect(method.parameters.length, equals(2));
      expect(method.returnType.typeIdentifier.name,
          equals('Windows.Foundation.Collections.IVectorView`1'));
      expect(method.returnType.typeIdentifier.typeArgs.length, equals(1));
      expect(method.returnType.typeIdentifier.typeArgs.first.name,
          equals('Windows.Globalization.JapanesePhoneme'));
      expect(method.parameters.first.name, equals('input'));
      expect(method.parameters.first.typeIdentifier.name, equals('string'));
      expect(method.parameters.first.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_STRING));
    });

    test('Calendar.Clone method is correct', () {
      final winTypeDef =
          MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

      final method = winTypeDef.findMethod('Clone')!;

      expect(method.returnType.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_CLASS));
      expect(method.returnType.name, equals('value'));
      expect(method.isSpecialName, isFalse);
      expect(method.isProperty, isFalse);
      expect(method.parameters.length, equals(0));
    });

    test('IAsyncInfo.Status get property is correct', () {
      final winTypeDef =
          MetadataStore.getMetadataForType('Windows.Foundation.IAsyncInfo')!;
      final method = winTypeDef.findMethod('get_Status')!;

      expect(method.returnType.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
      expect(method.returnType.typeIdentifier.name,
          equals('Windows.Foundation.AsyncStatus'));
      expect(method.isSpecialName, isTrue);
      expect(method.isProperty, isTrue);
      expect(method.isSetProperty, isFalse);
      expect(method.isGetProperty, isTrue);
      expect(method.parameters.length, equals(0));
    });

    test('findMethod() fails gracefully', () {
      final winTypeDef =
          MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

      final method = winTypeDef.findMethod('whoLetTheDogsOut');
      expect(method, isNull);
    });

    test('Retrieve enums', () {
      final mdScope =
          MetadataStore.getScopeForType('Windows.Globalization.Calendar');

      expect(mdScope.enums.length, greaterThanOrEqualTo(15));
    });

    test('Evaluate an enum has the right number of fields', () {
      final mdScope =
          MetadataStore.getScopeForType('Windows.Globalization.Calendar');

      final dayOfWeek =
          mdScope.enums.firstWhere((en) => en.typeName.endsWith('DayOfWeek'));

      expect(dayOfWeek.fields.length, equals(8)); // includes 'value__'
    });

    test('Evaluate an enum has the right values', () {
      final mdScope =
          MetadataStore.getScopeForType('Windows.Globalization.Calendar');

      final dayOfWeek =
          mdScope.enums.firstWhere((en) => en.typeName.endsWith('DayOfWeek'));

      final tuesday = dayOfWeek.fields['Tuesday']!;
      expect(tuesday, equals(2));
    });

    test('IPropertyValue array type', () {
      final winTypeDef = MetadataStore.getMetadataForType(
          'Windows.Foundation.IPropertyValue')!;

      final method = winTypeDef.findMethod('GetUInt8Array')!;
      expect(method.isProperty, isFalse);
      expect(method.parameters.length, equals(2));

      expect(method.token, equals(0x06000230));

      final valueSizeParam = method.parameters.first;
      expect(valueSizeParam.name, equals('__valueSize'));
      expect(valueSizeParam.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_PTR));
      expect(valueSizeParam.typeIdentifier.typeArgs.length, equals(1));
      expect(valueSizeParam.typeIdentifier.typeArgs.first.corType,
          equals(CorElementType.ELEMENT_TYPE_U4));

      final valueParam = method.parameters.last;
      expect(valueParam.name, equals('value'));
      expect(valueParam.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_PTR));
      expect(valueParam.typeIdentifier.typeArgs.length, equals(1));
      expect(valueParam.typeIdentifier.typeArgs.first.corType,
          equals(CorElementType.ELEMENT_TYPE_U1));
    });
  }
}

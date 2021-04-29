@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('List all tokens in a file', () {
    final mdScope =
        MetadataStore.getScopeForType('Windows.Globalization.Calendar');

    // This is 99 on Windows Server 2019, 104 on Windows 10 2004. The exact
    // number is less critical than that this returns a sane result.
    expect(mdScope.typeDefs.length, greaterThan(50));
  });

  test('Scope version string returns expected result', () {
    final scope =
        MetadataStore.getScopeForType('Windows.Globalization.Calendar');
    expect(scope.versionNumber, startsWith('WindowsRuntime'));
  });

  test('Scope modules contain expected user strings', () {
    final winRTScope =
        MetadataStore.getScopeForType('Windows.Foundation.IPropertyValue');
    expect(winRTScope.userStrings.length, equals(1));
    expect(winRTScope.userStrings.first, equals(' '));

    final win32Scope = MetadataStore.getWin32Scope();
    expect(win32Scope.userStrings.length, equals(0));
  });

  test('Appropriate response to failure to find scope', () {
    expect(() => MetadataStore.getScopeForType('Windows.Monetization.Dogecoin'),
        throwsA(isA<WindowsException>()));
  });

  test('Find a specific WinMD token', () {
    final mdScope =
        MetadataStore.getScopeForType('Windows.Globalization.ICalendarFactory');

    final type = mdScope.findTypeDef('Windows.Globalization.Calendar')!;

    // The number token ID may change from build to build, but the highest
    // order byte should always be 0x02
    expect(type.token & 0x02000000, equals(0x02000000));
  });

  test('Get IAsyncInfo methods', () {
    final mdScope =
        MetadataStore.getScopeForType('Windows.Foundation.IPropertyValue');

    final winTypeDef = mdScope.findTypeDef('Windows.Foundation.IAsyncInfo')!;
    final methods = winTypeDef.methods;

    expect(methods[0].name, equals('get_Id'));
    expect(methods[1].name, equals('get_Status'));
    expect(methods[2].name, equals('get_ErrorCode'));
    expect(methods[3].name, equals('Cancel'));
    expect(methods[4].name, equals('Close'));
  });

  test('Calendar.HourAsPaddedString method properties', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.Calendar')!;
    final methods = winTypeDef.methods;

    expect(methods[75].name, equals('HourAsPaddedString'));
    expect(methods[75].memberAccess, equals(MemberAccess.public));
    expect(methods[75].isStatic, isFalse);
    expect(methods[75].isFinal, isTrue);
    expect(methods[75].isVirtual, isTrue);
    expect(methods[75].isSpecialName, isFalse);
  });

  test('Interface correctly identifies what it inherits', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Foundation.IAsyncAction')!;

    final interfaces = winTypeDef.interfaces;
    expect(interfaces.length, equals(1));
    expect(interfaces.first.name, equals('Windows.Foundation.IAsyncInfo'));
  });

  test('Interface with multiple inheritance identifies all parent interfaces',
      () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.UI.Xaml.Controls.Button')!;

    final interfaces = winTypeDef.interfaces;
    expect(interfaces.length, equals(2));

    final interfaceNames = interfaces.map((element) => element.name);
    expect(interfaceNames, contains('Windows.UI.Xaml.Controls.IButton'));
    expect(
        interfaceNames, contains('Windows.UI.Xaml.Controls.IButtonWithFlyout'));
  });

  test('Find interfaces returns sane results with IDictionary<string, object>',
      () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.IPropertySet')!;

    final interfaces = winTypeDef.interfaces;
    expect(interfaces.length, equals(3));
    expect(interfaces[1].tokenType, equals(TokenType.TypeSpec));

    final idict = interfaces[1];
    expect(idict.typeSpec?.baseType, equals(BaseType.GenericTypeModifier));
    expect(idict.typeSpec?.name, contains('Collections.IMap'));
    expect(idict.typeSpec?.typeArg, isNotNull);
    expect(idict.typeSpec?.typeArg?.baseType, equals(BaseType.String));
    expect(idict.typeSpec?.typeArg?.typeArg, isNotNull);
    expect(idict.typeSpec?.typeArg?.typeArg?.baseType, equals(BaseType.Object));
  });

  test('Find interfaces returns sane results with IEnumerable<class>', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Media.Playback.PlaybackMediaMarkerSequence')!;

    final interfaces = winTypeDef.interfaces;
    expect(interfaces.length, equals(2));

    expect(interfaces.first.name, endsWith('IPlaybackMediaMarkerSequence'));
    expect(interfaces.last.typeSpec?.typeArg?.name,
        endsWith('PlaybackMediaMarker'));
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
    expect(method.returnType.typeIdentifier.baseType, equals(BaseType.Void));
    expect(method.parameters.length, equals(1));
    expect(method.parameters.first.typeIdentifier.baseType,
        equals(BaseType.Int32));
    expect(method.parameters.first.name, equals('days'));
  });

  test('Calendar.YearAsString() method is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('YearAsString')!;

    expect(method.isProperty, isFalse);
    expect(method.returnType.typeIdentifier.baseType, equals(BaseType.String));
    expect(method.parameters.length, equals(0));
  });

  test('Calendar.MonthAsPaddedNumericString() method is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('MonthAsPaddedNumericString')!;

    expect(method.isProperty, isFalse);
    expect(method.returnType.typeIdentifier.baseType, equals(BaseType.String));
    expect(method.parameters.length, equals(1));
    expect(method.parameters.first.typeIdentifier.baseType,
        equals(BaseType.Int32));
    expect(method.parameters.first.name, equals('minDigits'));
  });

  test('Calendar.SetToNow() method is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('SetToNow')!;

    expect(method.isProperty, isFalse);
    expect(method.returnType.typeIdentifier.baseType, equals(BaseType.Void));
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

    expect(method.returnType.typeIdentifier.baseType, equals(BaseType.Int32));
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

    expect(method.returnType.typeIdentifier.baseType, equals(BaseType.Void));
    expect(method.isSpecialName, isTrue);
    expect(method.isProperty, isTrue);
    expect(method.isSetProperty, isTrue);
    expect(method.isGetProperty, isFalse);
    expect(method.parameters.length, equals(1));
    expect(method.parameters.first.typeIdentifier.baseType,
        equals(BaseType.Int32));
  });

  test('Property setter for a class type is correct', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.IFileOpenPicker')!;

    final method = winTypeDef.findMethod('put_ViewMode')!;

    expect(method.returnType.typeIdentifier.baseType, equals(BaseType.Void));
    expect(method.isSpecialName, isTrue);
    expect(method.isProperty, isTrue);
    expect(method.isSetProperty, isTrue);
    expect(method.isGetProperty, isFalse);
    expect(method.parameters.length, equals(1));
    expect(method.parameters.first.typeIdentifier.baseType,
        equals(BaseType.ValueTypeModifier));
    expect(method.parameters.first.typeIdentifier.name,
        equals('Windows.Storage.Pickers.PickerViewMode'));
  });

  test('Property getter returns appropriate results for interface.', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Media.Playback.MediaPlayer')!;

    final method = winTypeDef.findMethod('get_Source')!;
    expect(method.returnType.typeIdentifier.baseType,
        equals(BaseType.ClassTypeModifier));
    expect(method.returnType.typeIdentifier.name,
        endsWith('IMediaPlaybackSource'));
  });

  test('Property getter returns appropriate results for delegate.', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Foundation.IAsyncAction')!;

    final method = winTypeDef.findMethod('get_Completed')!;
    expect(method.isGetProperty, isTrue);
    expect(method.returnType.name, equals('handler'));
    expect(method.returnType.typeIdentifier.name,
        endsWith('AsyncActionCompletedHandler'));
  });

  test('Property setter returns appropriate results for delegate.', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Foundation.IAsyncAction')!;

    final method = winTypeDef.findMethod('put_Completed')!;
    expect(method.isSetProperty, isTrue);
    expect(method.parameters.first.name, equals('handler'));
    expect(method.parameters.first.typeIdentifier.name,
        endsWith('AsyncActionCompletedHandler'));
  });

  test('String parameters are accurately represented', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('ChangeCalendarSystem')!;

    expect(method.parameters.first.typeIdentifier.baseType,
        equals(BaseType.String));
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
    expect(method.returnType.typeIdentifier.baseType,
        equals(BaseType.ClassTypeModifier));
    expect(method.returnType.typeIdentifier.name,
        equals('Windows.Globalization.Calendar'));
  });

  test('String array property return type is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('get_Languages')!;

    expect(method.parameters.length, equals(0));
    expect(method.returnType.typeIdentifier.baseType,
        equals(BaseType.GenericTypeModifier));
    expect(method.returnType.typeIdentifier.name,
        equals('Windows.Foundation.Collections.IVectorView`1'));
    expect(method.returnType.typeIdentifier.typeArg, isNotNull);
    expect(method.returnType.typeIdentifier.typeArg?.baseType,
        equals(BaseType.String));
  });

  test('Calendar.PeriodAsFullString overload is correctly represented', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final methods = winTypeDef.methods.where((m) => m.name == 'PeriodAsString');
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

    expect(method.returnType.typeIdentifier.baseType, equals(BaseType.String));
    expect(method.isSpecialName, isFalse);
    expect(method.isProperty, isFalse);
    expect(method.parameters.length, equals(1));
    expect(method.parameters.first.name, equals('remainingDigits'));
    expect(method.parameters.first.typeIdentifier.baseType,
        equals(BaseType.Int32));
  });

  test('Method with one parameter and return value is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.Calendar')!;

    final method = winTypeDef.methods
        .where((m) => m.name == 'MonthAsString')
        .firstWhere((m) =>
            m.attributeAsString(
                'Windows.Foundation.Metadata.OverloadAttribute') ==
            'MonthAsString');

    expect(method.returnType.typeIdentifier.baseType, equals(BaseType.String));
    expect(method.isSpecialName, isFalse);
    expect(method.isProperty, isFalse);
    expect(method.parameters.length, equals(1));
    expect(method.parameters.first.name, equals('idealLength'));
    expect(method.parameters.first.typeIdentifier.baseType,
        equals(BaseType.Int32));
  });

  test('Method with multiple parameters and no return value is correct', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Storage.Provider.CachedFileUpdater')!;

    final method = winTypeDef.findMethod('SetUpdateInformation')!;

    expect(method.returnType.typeIdentifier.baseType, equals(BaseType.Void));
    expect(method.isProperty, isFalse);
    expect(method.parameters.length, equals(5));
    expect(method.parameters[0].typeIdentifier.name,
        equals('Windows.Storage.IStorageFile'));
    expect(method.parameters[0].name, equals('file'));
    expect(
        method.parameters[1].typeIdentifier.baseType, equals(BaseType.String));
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
    expect(method.returnType.typeIdentifier.typeArg, isNotNull);
    expect(method.returnType.typeIdentifier.typeArg?.name,
        equals('Windows.Globalization.JapanesePhoneme'));
    expect(method.parameters.first.name, equals('input'));
    expect(method.parameters.first.typeIdentifier.baseType,
        equals(BaseType.String));
  });

  test('Calendar.Clone method is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('Clone')!;

    expect(method.returnType.typeIdentifier.baseType,
        equals(BaseType.ClassTypeModifier));
    expect(method.returnType.name, equals('value'));
    expect(method.isSpecialName, isFalse);
    expect(method.isProperty, isFalse);
    expect(method.parameters.length, equals(0));
  });

  test('IAsyncInfo.Status get property is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Foundation.IAsyncInfo')!;
    final method = winTypeDef.findMethod('get_Status')!;

    expect(method.returnType.typeIdentifier.baseType,
        equals(BaseType.ValueTypeModifier));
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

    // Windows Server 2016 returns 14; any newer platform will be higher than
    // that. Selecting a lower number for this test in the hope that it's right
    // for any WinRT platform.
    expect(mdScope.enums.length, greaterThanOrEqualTo(10));
  });

  test('Evaluate an enum has the right number of fields', () {
    final mdScope =
        MetadataStore.getScopeForType('Windows.Globalization.Calendar');

    final dayOfWeek =
        mdScope.enums.firstWhere((en) => en.name.endsWith('DayOfWeek'));

    expect(dayOfWeek.fields.length, equals(8)); // includes 'value__'
  });

  test('Evaluate an enum has the right values', () {
    final mdScope =
        MetadataStore.getScopeForType('Windows.Globalization.Calendar');

    final dayOfWeek =
        mdScope.enums.firstWhere((en) => en.name.endsWith('DayOfWeek'));

    expect(dayOfWeek.findField('Tuesday')?.value, equals(2));
  });

  test('IPropertyValue array type', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Foundation.IPropertyValue')!;

    final method = winTypeDef.findMethod('GetUInt8Array')!;
    expect(method.isProperty, isFalse);
    expect(method.parameters.length, equals(2));

    final valueSizeParam = method.parameters.first;
    expect(valueSizeParam.name, equals('__valueSize'));
    expect(valueSizeParam.typeIdentifier.baseType,
        equals(BaseType.PointerTypeModifier));
    expect(valueSizeParam.typeIdentifier.typeArg, isNotNull);
    expect(valueSizeParam.typeIdentifier.typeArg?.baseType,
        equals(BaseType.Uint32));

    final valueParam = method.parameters.last;
    expect(valueParam.name, equals('value'));
    expect(valueParam.typeIdentifier.baseType,
        equals(BaseType.PointerTypeModifier));
    expect(valueParam.typeIdentifier.typeArg, isNotNull);
    expect(valueParam.typeIdentifier.typeArg?.baseType, equals(BaseType.Uint8));
  });

  test('Can find generic types', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.IAsyncOperation`1');

    expect(winTypeDef, isNotNull);
  });

  test('Can find type information for generic types', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.IAsyncOperation`1')!;

    expect(winTypeDef.genericParams.length, equals(1));
    expect(winTypeDef.genericParams.first.name, endsWith('TResult'));
  });
  test('Can find type information for generic types 2', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.IAsyncOperationWithProgress`2')!;

    expect(winTypeDef.genericParams.length, equals(2));
    expect(winTypeDef.genericParams.first.name, endsWith('TResult'));
    expect(winTypeDef.genericParams.last.name, endsWith('TProgress'));
  });

  test('Generic method returns the right type', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.IAsyncOperation`1')!;

    final getResults = winTypeDef.findMethod('GetResults')!;
    expect(getResults.parameters, isEmpty);
    expect(getResults.returnType.typeIdentifier.baseType,
        equals(BaseType.ClassVariableTypeModifier));
    expect(getResults.returnType.typeIdentifier.genericParameterSequence,
        equals(0));
  });

  test('Generic put parameter contains the right type', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.IAsyncOperation`1')!;

    final putCompleted = winTypeDef.findMethod('put_Completed')!;
    expect(putCompleted.parameters.length, equals(1));
    expect(putCompleted.parameters.first.name, equals('handler'));
    expect(putCompleted.parameters.first.typeIdentifier.baseType,
        equals(BaseType.GenericTypeModifier));
    expect(putCompleted.parameters.first.typeIdentifier.name,
        endsWith('AsyncOperationCompletedHandler`1'));
  });

  test('Generic get parameter contains the right type', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.IAsyncOperation`1')!;

    final getCompleted = winTypeDef.findMethod('get_Completed')!;
    expect(getCompleted.returnType.typeIdentifier.baseType,
        equals(BaseType.GenericTypeModifier));
    expect(getCompleted.returnType.typeIdentifier.name,
        endsWith('AsyncOperationCompletedHandler`1'));
  });
}

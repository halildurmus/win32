@TestOn('windows')

import 'package:test/test.dart';
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
    expect(scope.version, startsWith('WindowsRuntime'));
  });

  test('Scope modules contain expected user strings', () {
    final winRTScope =
        MetadataStore.getScopeForType('Windows.Foundation.IPropertyValue');
    expect(winRTScope.userStrings.length, equals(1));
    expect(winRTScope.userStrings.first, equals(' '));

    final win32Scope = MetadataStore.getWin32Scope();
    expect(win32Scope.userStrings.length, equals(0));
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

  test('A given interface correctly identifies the interfaces it requires', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Foundation.IAsyncAction')!;

    final interfaces = winTypeDef.interfaces;
    expect(interfaces.length, equals(1));
    expect(interfaces.first.name, equals('Windows.Foundation.IAsyncInfo'));
  });

  test('Class that implements multiple interfaces correctly identifies them',
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

  test('Class that extends a parent correctly reports it', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.UI.Xaml.Controls.Button');

    expect(winTypeDef?.parent?.name,
        equals('Windows.UI.Xaml.Controls.Primitives.ButtonBase'));
  });

  test('Generic return type <T> can be parsed', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.IVectorView`1');

    final method = winTypeDef?.methods.first;
    expect(method?.returnType.typeIdentifier.baseType,
        equals(BaseType.classVariableTypeModifier));
  });

  test('Generic class can be parsed', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.IVectorView`1');

    expect(winTypeDef?.methods.length, greaterThanOrEqualTo(4));
  });

  test('Find interfaces returns sane results with IDictionary<string, object>',
      () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.IPropertySet')!;

    final interfaces = winTypeDef.interfaces;
    expect(interfaces.length, equals(3));
    expect(interfaces[1].tokenType, equals(TokenType.typeSpec));

    final idict = interfaces[1];
    expect(idict.typeSpec?.baseType, equals(BaseType.genericTypeModifier));
    expect(idict.typeSpec?.name, contains('Collections.IMap'));
    expect(idict.typeSpec?.typeArg, isNotNull);
    expect(idict.typeSpec?.typeArg?.baseType, equals(BaseType.stringType));
    expect(idict.typeSpec?.typeArg?.typeArg, isNotNull);
    expect(idict.typeSpec?.typeArg?.typeArg?.baseType,
        equals(BaseType.objectType));
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
    expect(guid, equals('{ca30221d-86d9-40fb-a26b-d44eb7cf08ea}'));
  });

  test('Interface is correctly identified', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    expect(winTypeDef.isInterface, isTrue);
    expect(winTypeDef.representsAsClass, isFalse);
    expect(winTypeDef.isClass, isFalse);
  });

  test('Class is correctly identified', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.Calendar')!;

    expect(winTypeDef.isInterface, isFalse);
    expect(winTypeDef.representsAsClass, isTrue);
    expect(winTypeDef.isClass, isTrue);
  });

  test('Calendar.AddDays() method is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('AddDays')!;

    expect(method.isProperty, isFalse);
    expect(
        method.returnType.typeIdentifier.baseType, equals(BaseType.voidType));
    expect(method.parameters.length, equals(1));
    expect(method.parameters.first.typeIdentifier.baseType,
        equals(BaseType.int32Type));
    expect(method.parameters.first.name, equals('days'));
  });

  test('Calendar.YearAsString() method is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('YearAsString')!;

    expect(method.isProperty, isFalse);
    expect(
        method.returnType.typeIdentifier.baseType, equals(BaseType.stringType));
    expect(method.parameters.length, equals(0));
  });

  test('Calendar.MonthAsPaddedNumericString() method is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('MonthAsPaddedNumericString')!;

    expect(method.isProperty, isFalse);
    expect(
        method.returnType.typeIdentifier.baseType, equals(BaseType.stringType));
    expect(method.parameters.length, equals(1));
    expect(method.parameters.first.typeIdentifier.baseType,
        equals(BaseType.int32Type));
    expect(method.parameters.first.name, equals('minDigits'));
  });

  test('Calendar.SetToNow() method is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('SetToNow')!;

    expect(method.isProperty, isFalse);
    expect(
        method.returnType.typeIdentifier.baseType, equals(BaseType.voidType));
    expect(method.parameters.length, equals(0));
  });

  test('Calendar.GetDateTime() method is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('GetDateTime')!;

    expect(method.isProperty, isFalse);
    expect(method.returnType.typeIdentifier.baseType,
        equals(BaseType.valueTypeModifier));
    expect(method.returnType.typeIdentifier.name, endsWith('DateTime'));
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

    expect(
        method.returnType.typeIdentifier.baseType, equals(BaseType.int32Type));
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

    expect(
        method.returnType.typeIdentifier.baseType, equals(BaseType.voidType));
    expect(method.isSpecialName, isTrue);
    expect(method.isProperty, isTrue);
    expect(method.isSetProperty, isTrue);
    expect(method.isGetProperty, isFalse);
    expect(method.parameters.length, equals(1));
    expect(method.parameters.first.typeIdentifier.baseType,
        equals(BaseType.int32Type));
  });

  test('Calendar.Languages getter property is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('get_Languages')!;

    expect(method.returnType.typeIdentifier.baseType,
        equals(BaseType.genericTypeModifier));
    expect(method.returnType.typeIdentifier.type?.name,
        equals('Windows.Foundation.Collections.IVectorView`1'));
    expect(method.returnType.typeIdentifier.type?.representsAsClass, isFalse);
    expect(method.returnType.typeIdentifier.type?.isInterface, isTrue);
    expect(method.isProperty, isTrue);
    expect(method.isSetProperty, isFalse);
    expect(method.isGetProperty, isTrue);
    expect(method.parameters.length, equals(0));
  });

  test('Property setter for a class type is correct', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.IFileOpenPicker')!;

    final method = winTypeDef.findMethod('put_ViewMode')!;

    expect(
        method.returnType.typeIdentifier.baseType, equals(BaseType.voidType));
    expect(method.isSpecialName, isTrue);
    expect(method.isProperty, isTrue);
    expect(method.isSetProperty, isTrue);
    expect(method.isGetProperty, isFalse);
    expect(method.parameters.length, equals(1));
    expect(method.parameters.first.typeIdentifier.baseType,
        equals(BaseType.valueTypeModifier));
    expect(method.parameters.first.typeIdentifier.name,
        equals('Windows.Storage.Pickers.PickerViewMode'));
  });

  test('Property getter returns appropriate results for interface.', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Media.Playback.MediaPlayer')!;

    final method = winTypeDef.findMethod('get_Source')!;
    expect(method.returnType.typeIdentifier.baseType,
        equals(BaseType.classTypeModifier));
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
        equals(BaseType.stringType));
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
        equals(BaseType.classTypeModifier));
    expect(method.returnType.typeIdentifier.name,
        equals('Windows.Globalization.Calendar'));
  });

  test('String array property return type is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('get_Languages')!;

    expect(method.parameters.length, equals(0));
    expect(method.returnType.typeIdentifier.baseType,
        equals(BaseType.genericTypeModifier));
    expect(method.returnType.typeIdentifier.name,
        equals('Windows.Foundation.Collections.IVectorView`1'));
    expect(method.returnType.typeIdentifier.typeArg, isNotNull);
    expect(method.returnType.typeIdentifier.typeArg?.baseType,
        equals(BaseType.stringType));
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

    expect(
        method.returnType.typeIdentifier.baseType, equals(BaseType.stringType));
    expect(method.isSpecialName, isFalse);
    expect(method.isProperty, isFalse);
    expect(method.parameters.length, equals(1));
    expect(method.parameters.first.name, equals('remainingDigits'));
    expect(method.parameters.first.typeIdentifier.baseType,
        equals(BaseType.int32Type));
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

    expect(
        method.returnType.typeIdentifier.baseType, equals(BaseType.stringType));
    expect(method.isSpecialName, isFalse);
    expect(method.isProperty, isFalse);
    expect(method.parameters.length, equals(1));
    expect(method.parameters.first.name, equals('idealLength'));
    expect(method.parameters.first.typeIdentifier.baseType,
        equals(BaseType.int32Type));
  });

  test('Method with multiple parameters and no return value is correct', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Storage.Provider.CachedFileUpdater')!;

    final method = winTypeDef.findMethod('SetUpdateInformation')!;

    expect(
        method.returnType.typeIdentifier.baseType, equals(BaseType.voidType));
    expect(method.isProperty, isFalse);
    expect(method.parameters.length, equals(5));
    expect(method.parameters[0].typeIdentifier.name,
        equals('Windows.Storage.IStorageFile'));
    expect(method.parameters[0].name, equals('file'));
    expect(method.parameters[1].typeIdentifier.baseType,
        equals(BaseType.stringType));
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

  test('Reference parameter is correct', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter')!;

    final method = winTypeDef.findMethod('TryCreate')!;
    final param = method.parameters.last;
    // [out] class [Windows.Globalization.winmd]Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter& phoneNumber
    expect(param.name, equals('phoneNumber'));
    expect(
        param.typeIdentifier.baseType, equals(BaseType.referenceTypeModifier));

    final refType = param.typeIdentifier.typeArg;
    expect(refType, isNotNull);
    expect(
        refType!.name,
        equals(
            'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter'));
    expect(refType.type, equals(winTypeDef));
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
        equals(BaseType.stringType));
  });

  test('Calendar.Clone method is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('Clone')!;

    expect(method.returnType.typeIdentifier.baseType,
        equals(BaseType.classTypeModifier));
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
        equals(BaseType.valueTypeModifier));
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
        equals(BaseType.pointerTypeModifier));
    expect(valueSizeParam.typeIdentifier.typeArg, isNotNull);
    expect(valueSizeParam.typeIdentifier.typeArg?.baseType,
        equals(BaseType.uint32Type));

    final valueParam = method.parameters.last;
    expect(valueParam.name, equals('value'));
    expect(valueParam.typeIdentifier.baseType,
        equals(BaseType.referenceTypeModifier));
    expect(valueParam.typeIdentifier.typeArg, isNotNull);
    expect(valueParam.typeIdentifier.typeArg!.baseType,
        equals(BaseType.simpleArrayType));
    expect(valueParam.typeIdentifier.typeArg!.typeArg, isNotNull);
    expect(valueParam.typeIdentifier.typeArg!.typeArg!.baseType,
        equals(BaseType.uint8Type));
  });

  test('IPropertyValueStatics array type', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.IPropertyValueStatics')!;

    final method = winTypeDef.findMethod('CreateUInt8Array')!;
    expect(method.isProperty, isFalse);
    expect(method.parameters.length, equals(2));

    final valueSizeParam = method.parameters.first;
    expect(valueSizeParam.name, equals('__valueSize'));
    expect(valueSizeParam.typeIdentifier.baseType, equals(BaseType.uint32Type));

    final valueParam = method.parameters.last;
    expect(valueParam.name, equals('value'));
    expect(
        valueParam.typeIdentifier.baseType, equals(BaseType.simpleArrayType));
    expect(valueParam.typeIdentifier.typeArg, isNotNull);
    expect(valueParam.typeIdentifier.typeArg!.baseType,
        equals(BaseType.uint8Type));
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
        equals(BaseType.classVariableTypeModifier));
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
        equals(BaseType.genericTypeModifier));
    expect(putCompleted.parameters.first.typeIdentifier.name,
        endsWith('AsyncOperationCompletedHandler`1'));
  });

  test('Generic get parameter contains the right type name', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.IAsyncOperation`1')!;

    final getCompleted = winTypeDef.findMethod('get_Completed')!;
    expect(getCompleted.returnType.typeIdentifier.baseType,
        equals(BaseType.genericTypeModifier));
    expect(getCompleted.returnType.typeIdentifier.name,
        endsWith('AsyncOperationCompletedHandler`1'));
  });

  test('Events can be found', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.PropertySet')!;

    expect(winTypeDef.events.length, equals(1));
    expect(winTypeDef.events.first.toString(), equals('MapChanged'));
    expect(winTypeDef.events.first.name, equals('MapChanged'));
  });

  test('Event contains the correct methods and properties', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.PropertySet')!;
    final mapChanged = winTypeDef.events.first;

    expect(mapChanged.isRTSpecialName, isFalse);
    expect(mapChanged.isSpecialName, isFalse);
    expect(mapChanged.addMethod, isNotNull);
    expect(mapChanged.removeMethod, isNotNull);
    expect(mapChanged.raiseMethod, isNull);
    expect(mapChanged.parent, equals(winTypeDef));
  });

  test('Event names are correct', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.PropertySet')!;
    final mapChanged = winTypeDef.events.first;

    expect(mapChanged.addMethod!.name, equals('add_MapChanged'));
    expect(mapChanged.removeMethod!.name, equals('remove_MapChanged'));
  });

  test('Generic constraints', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.IAsyncActionWithProgress`1')!;
    final putProgress = winTypeDef.methods.first;
    expect(putProgress.hasGenericParameters, isFalse);

    final handler = putProgress.parameters.first;
    expect(handler.name, equals('handler'));
    expect(handler.typeIdentifier.type, isNotNull);
    expect(handler.typeIdentifier.type!.name,
        endsWith('AsyncActionProgressHandler`1'));
    expect(handler.typeIdentifier.typeArg!.genericParameterSequence, equals(0));

    final aaph = handler.typeIdentifier.type!;
    expect(aaph.genericParams.length, equals(1));
  });

  test('Calendar factory interfaces are present', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.Calendar')!;
    final activatableAttrs = winTypeDef.customAttributes
        .where((element) => element.name.endsWith('ActivatableAttribute'))
        .where((element) => element.parameters.length == 3)
        .map((element) => element.parameters.first.value as String);
    expect(
        activatableAttrs,
        containsAll([
          'Windows.Globalization.ICalendarFactory2',
          'Windows.Globalization.ICalendarFactory'
        ]));
  });
}

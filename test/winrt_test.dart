@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('List all tokens in a file', () {
    final mdScope =
        MetadataStore.getScopeForType('Windows.Globalization.Calendar');

    // This is 99 on Windows Server 2019, 104 on Windows 10 2004. The exact
    // number is less critical than that this returns a sane result.
    check(mdScope.typeDefs.length).isGreaterThan(50);
  });

  test('Scope version string returns expected result', () {
    final scope =
        MetadataStore.getScopeForType('Windows.Globalization.Calendar');
    check(scope.version).startsWith('WindowsRuntime');
  });

  test('Scope modules contain expected user strings', () {
    final winRTScope =
        MetadataStore.getScopeForType('Windows.Foundation.IPropertyValue');
    check(winRTScope.userStrings.length).equals(1);
    check(winRTScope.userStrings.first).equals(' ');

    final win32Scope = MetadataStore.getWin32Scope();
    check(win32Scope.userStrings.length).equals(0);
  });

  test('Find a specific WinMD token', () {
    final mdScope =
        MetadataStore.getScopeForType('Windows.Globalization.ICalendarFactory');

    final type = mdScope.findTypeDef('Windows.Globalization.Calendar')!;

    // The number token ID may change from build to build, but the highest
    // order byte should always be 0x02
    check(type.token & 0x02000000).equals(0x02000000);
  });

  test('Get IAsyncInfo methods', () {
    final mdScope =
        MetadataStore.getScopeForType('Windows.Foundation.IPropertyValue');

    final winTypeDef = mdScope.findTypeDef('Windows.Foundation.IAsyncInfo')!;
    final methods = winTypeDef.methods;

    check(methods[0].name).equals('get_Id');
    check(methods[1].name).equals('get_Status');
    check(methods[2].name).equals('get_ErrorCode');
    check(methods[3].name).equals('Cancel');
    check(methods[4].name).equals('Close');
  });

  test('Calendar.HourAsPaddedString method properties', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.Calendar')!;
    final methods = winTypeDef.methods;

    check(methods[75].name).equals('HourAsPaddedString');
    check(methods[75].memberAccess).equals(MemberAccess.public);
    check(methods[75].isStatic).isFalse();
    check(methods[75].isFinal).isTrue();
    check(methods[75].isVirtual).isTrue();
    check(methods[75].isSpecialName).isFalse();
  });

  test('A given interface correctly identifies the interfaces it requires', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Foundation.IAsyncAction')!;

    final interfaces = winTypeDef.interfaces;
    check(interfaces.length).equals(1);
    check(interfaces.first.name).equals('Windows.Foundation.IAsyncInfo');
  });

  test('Class that implements multiple interfaces correctly identifies them',
      () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.UI.Xaml.Controls.Button')!;

    final interfaces = winTypeDef.interfaces;
    check(interfaces.length).equals(2);

    final interfaceNames = interfaces.map((element) => element.name);
    check(interfaceNames).contains('Windows.UI.Xaml.Controls.IButton');
    check(interfaceNames)
        .contains('Windows.UI.Xaml.Controls.IButtonWithFlyout');
  });

  test('Class that extends a parent correctly reports it', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.UI.Xaml.Controls.Button');

    check(winTypeDef?.parent?.name)
        .equals('Windows.UI.Xaml.Controls.Primitives.ButtonBase');
  });

  test('Generic return type <T> can be parsed', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.IVectorView`1');

    final method = winTypeDef?.methods.first;
    check(method?.returnType.typeIdentifier.baseType)
        .equals(BaseType.classVariableTypeModifier);
  });

  test('Generic class can be parsed', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.IVectorView`1')!;

    check(winTypeDef.methods.length).isGreaterOrEqual(4);
  });

  test('Find interfaces returns sane results with IDictionary<string, object>',
      () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.IPropertySet')!;

    final interfaces = winTypeDef.interfaces;
    check(interfaces.length).equals(3);
    check(interfaces[1].tokenType).equals(TokenType.typeSpec);

    final idict = interfaces[1];
    check(idict.typeSpec?.baseType).equals(BaseType.genericTypeModifier);
    check(idict.typeSpec!.name).contains('Collections.IMap');
    check(idict.typeSpec?.typeArg).isNotNull();
    check(idict.typeSpec?.typeArg?.baseType).equals(BaseType.stringType);
    check(idict.typeSpec?.typeArg?.typeArg).isNotNull();
    check(idict.typeSpec?.typeArg?.typeArg?.baseType)
        .equals(BaseType.objectType);
  });

  test('Find interfaces returns sane results with IEnumerable<class>', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Media.Playback.PlaybackMediaMarkerSequence')!;

    final interfaces = winTypeDef.interfaces;
    check(interfaces.length).equals(2);

    check(interfaces.first.name).endsWith('IPlaybackMediaMarkerSequence');
    check(interfaces.last.typeSpec!.typeArg!.name)
        .endsWith('PlaybackMediaMarker');
  });

  test('Interface GUID is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final guid = winTypeDef.guid;
    check(guid).isNotNull();
    check(guid).equals('{ca30221d-86d9-40fb-a26b-d44eb7cf08ea}');
  });

  test('Interface is correctly identified', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    check(winTypeDef.isInterface).isTrue();
    check(winTypeDef.representsAsClass).isFalse();
    check(winTypeDef.isClass).isFalse();
  });

  test('Class is correctly identified', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.Calendar')!;

    check(winTypeDef.isInterface).isFalse();
    check(winTypeDef.representsAsClass).isTrue();
    check(winTypeDef.isClass).isTrue();
  });

  test('Calendar.AddDays() method is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('AddDays')!;

    check(method.isProperty).isFalse();
    check(method.returnType.typeIdentifier.baseType).equals(BaseType.voidType);
    check(method.parameters.length).equals(1);
    check(method.parameters.first.typeIdentifier.baseType)
        .equals(BaseType.int32Type);
    check(method.parameters.first.name).equals('days');
  });

  test('Calendar.YearAsString() method is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('YearAsString')!;

    check(method.isProperty).isFalse();
    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.stringType);
    check(method.parameters.length).equals(0);
  });

  test('Calendar.MonthAsPaddedNumericString() method is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('MonthAsPaddedNumericString')!;

    check(method.isProperty).isFalse();
    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.stringType);
    check(method.parameters.length).equals(1);
    check(method.parameters.first.typeIdentifier.baseType)
        .equals(BaseType.int32Type);
    check(method.parameters.first.name).equals('minDigits');
  });

  test('Calendar.SetToNow() method is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('SetToNow')!;

    check(method.isProperty).isFalse();
    check(method.returnType.typeIdentifier.baseType).equals(BaseType.voidType);
    check(method.parameters.length).equals(0);
  });

  test('Calendar.GetDateTime() method is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('GetDateTime')!;

    check(method.isProperty).isFalse();
    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(method.returnType.typeIdentifier.name).endsWith('DateTime');
    check(method.parameters.length).equals(0);
  });

  test('Calendar.SetToNow() calling convention is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('SetToNow')!;

    check(method.callingConvention).equals('default instance ');
  });

  test('Calendar.Day getter property is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('get_Day')!;

    check(method.returnType.typeIdentifier.baseType).equals(BaseType.int32Type);
    check(method.isSpecialName).isTrue();
    check(method.isProperty).isTrue();
    check(method.isSetProperty).isFalse();
    check(method.isGetProperty).isTrue();
    check(method.parameters.length).equals(0);
  });

  test('Calendar.Day setter property is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('put_Day')!;

    check(method.returnType.typeIdentifier.baseType).equals(BaseType.voidType);
    check(method.isSpecialName).isTrue();
    check(method.isProperty).isTrue();
    check(method.isSetProperty).isTrue();
    check(method.isGetProperty).isFalse();
    check(method.parameters.length).equals(1);
    check(method.parameters.first.typeIdentifier.baseType)
        .equals(BaseType.int32Type);
  });

  test('Calendar.Languages getter property is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('get_Languages')!;

    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.genericTypeModifier);
    check(method.returnType.typeIdentifier.type?.name)
        .equals('Windows.Foundation.Collections.IVectorView`1');
    check(method.returnType.typeIdentifier.type!.representsAsClass).isFalse();
    check(method.returnType.typeIdentifier.type!.isInterface).isTrue();
    check(method.isProperty).isTrue();
    check(method.isSetProperty).isFalse();
    check(method.isGetProperty).isTrue();
    check(method.parameters.length).equals(0);
  });

  test('Property setter for a class type is correct', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.IFileOpenPicker')!;

    final method = winTypeDef.findMethod('put_ViewMode')!;

    check(method.returnType.typeIdentifier.baseType).equals(BaseType.voidType);
    check(method.isSpecialName).isTrue();
    check(method.isProperty).isTrue();
    check(method.isSetProperty).isTrue();
    check(method.isGetProperty).isFalse();
    check(method.parameters.length).equals(1);
    check(method.parameters.first.typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(method.parameters.first.typeIdentifier.name)
        .equals('Windows.Storage.Pickers.PickerViewMode');
  });

  test('Property getter returns appropriate results for interface.', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Media.Playback.MediaPlayer')!;

    final method = winTypeDef.findMethod('get_Source')!;
    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.classTypeModifier);
    check(method.returnType.typeIdentifier.name)
        .endsWith('IMediaPlaybackSource');
  });

  test('Property getter returns appropriate results for delegate.', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Foundation.IAsyncAction')!;

    final method = winTypeDef.findMethod('get_Completed')!;
    check(method.isGetProperty).isTrue();
    check(method.returnType.name).equals('handler');
    check(method.returnType.typeIdentifier.name)
        .endsWith('AsyncActionCompletedHandler');
  });

  test('Property setter returns appropriate results for delegate.', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Foundation.IAsyncAction')!;

    final method = winTypeDef.findMethod('put_Completed')!;
    check(method.isSetProperty).isTrue();
    check(method.parameters.first.name).equals('handler');
    check(method.parameters.first.typeIdentifier.name)
        .endsWith('AsyncActionCompletedHandler');
  });

  test('String parameters are accurately represented', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('ChangeCalendarSystem')!;

    check(method.parameters.first.typeIdentifier.baseType)
        .equals(BaseType.stringType);
    check(method.isSpecialName).isFalse();
    check(method.isProperty).isFalse();
    check(method.isSetProperty).isFalse();
    check(method.isGetProperty).isFalse();
  });

  test('Calendar.Clone return value is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('Clone')!;

    check(method.parameters.length).equals(0);
    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.classTypeModifier);
    check(method.returnType.typeIdentifier.name)
        .equals('Windows.Globalization.Calendar');
  });

  test('String array property return type is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('get_Languages')!;

    check(method.parameters.length).equals(0);
    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.genericTypeModifier);
    check(method.returnType.typeIdentifier.name)
        .equals('Windows.Foundation.Collections.IVectorView`1');
    check(method.returnType.typeIdentifier.typeArg).isNotNull();
    check(method.returnType.typeIdentifier.typeArg?.baseType)
        .equals(BaseType.stringType);
  });

  test('Calendar.PeriodAsFullString overload is correctly represented', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final methods = winTypeDef.methods.where((m) => m.name == 'PeriodAsString');
    check(methods.length).equals(2);

    for (final method in methods) {
      final overloadName = method
          .attributeAsString('Windows.Foundation.Metadata.OverloadAttribute');

      check(overloadName).anyOf(
          [it()..equals('PeriodAsFullString'), it()..equals('PeriodAsString')]);
    }
  });

  test('Calendar.YearAsTruncatedString method is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('YearAsTruncatedString')!;

    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.stringType);
    check(method.isSpecialName).isFalse();
    check(method.isProperty).isFalse();
    check(method.parameters.length).equals(1);
    check(method.parameters.first.name).equals('remainingDigits');
    check(method.parameters.first.typeIdentifier.baseType)
        .equals(BaseType.int32Type);
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

    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.stringType);
    check(method.isSpecialName).isFalse();
    check(method.isProperty).isFalse();
    check(method.parameters.length).equals(1);
    check(method.parameters.first.name).equals('idealLength');
    check(method.parameters.first.typeIdentifier.baseType)
        .equals(BaseType.int32Type);
  });

  test('Method with multiple parameters and no return value is correct', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Storage.Provider.CachedFileUpdater')!;

    final method = winTypeDef.findMethod('SetUpdateInformation')!;

    check(method.returnType.typeIdentifier.baseType).equals(BaseType.voidType);
    check(method.isProperty).isFalse();
    check(method.parameters.length).equals(5);
    check(method.parameters[0].typeIdentifier.name)
        .equals('Windows.Storage.IStorageFile');
    check(method.parameters[0].name).equals('file');
    check(method.parameters[1].typeIdentifier.baseType)
        .equals(BaseType.stringType);
    check(method.parameters[1].name).equals('contentId');
    check(method.parameters[2].typeIdentifier.name)
        .equals('Windows.Storage.Provider.ReadActivationMode');
    check(method.parameters[2].name).equals('readMode');
    check(method.parameters[3].typeIdentifier.name)
        .equals('Windows.Storage.Provider.WriteActivationMode');
    check(method.parameters[3].name).equals('writeMode');
    check(method.parameters[4].typeIdentifier.name)
        .equals('Windows.Storage.Provider.CachedFileOptions');
    check(method.parameters[4].name).equals('options');
  });

  test('Reference parameter is correct', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter')!;

    final method = winTypeDef.findMethod('TryCreate')!;
    final param = method.parameters.last;
    // [out] class [Windows.Globalization.winmd]Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter& phoneNumber
    check(param.name).equals('phoneNumber');
    check(param.typeIdentifier.baseType).equals(BaseType.referenceTypeModifier);

    final refType = param.typeIdentifier.typeArg;
    check(refType).isNotNull();
    check(refType!.name).equals(
        'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter');
    check(refType.type).equals(winTypeDef);
  });

  test('Method with generic return value is correct', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Globalization.JapanesePhoneticAnalyzer')!;

    final method = winTypeDef.findMethod('GetWords')!;
    check(method.parameters.length).equals(2);
    check(method.returnType.typeIdentifier.name)
        .equals('Windows.Foundation.Collections.IVectorView`1');
    check(method.returnType.typeIdentifier.typeArg).isNotNull();
    check(method.returnType.typeIdentifier.typeArg?.name)
        .equals('Windows.Globalization.JapanesePhoneme');
    check(method.parameters.first.name).equals('input');
    check(method.parameters.first.typeIdentifier.baseType)
        .equals(BaseType.stringType);
  });

  test('Calendar.Clone method is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('Clone')!;

    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.classTypeModifier);
    check(method.returnType.name).equals('value');
    check(method.isSpecialName).isFalse();
    check(method.isProperty).isFalse();
    check(method.parameters.length).equals(0);
  });

  test('IAsyncInfo.Status get property is correct', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Foundation.IAsyncInfo')!;
    final method = winTypeDef.findMethod('get_Status')!;

    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(method.returnType.typeIdentifier.name)
        .equals('Windows.Foundation.AsyncStatus');
    check(method.isSpecialName).isTrue();
    check(method.isProperty).isTrue();
    check(method.isSetProperty).isFalse();
    check(method.isGetProperty).isTrue();
    check(method.parameters.length).equals(0);
  });

  test('findMethod() fails gracefully', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;

    final method = winTypeDef.findMethod('whoLetTheDogsOut');
    check(method).isNull();
  });

  test('Retrieve enums', () {
    final mdScope =
        MetadataStore.getScopeForType('Windows.Globalization.Calendar');

    // Windows Server 2016 returns 14; any newer platform will be higher than
    // that. Selecting a lower number for this test in the hope that it's right
    // for any WinRT platform.
    check(mdScope.enums.length).isGreaterOrEqual(10);
  });

  test('Evaluate an enum has the right number of fields', () {
    final mdScope =
        MetadataStore.getScopeForType('Windows.Globalization.Calendar');

    final dayOfWeek =
        mdScope.enums.firstWhere((en) => en.name.endsWith('DayOfWeek'));

    check(dayOfWeek.fields.length).equals(8); // includes 'value__'
  });

  test('Evaluate an enum has the right values', () {
    final mdScope =
        MetadataStore.getScopeForType('Windows.Globalization.Calendar');

    final dayOfWeek =
        mdScope.enums.firstWhere((en) => en.name.endsWith('DayOfWeek'));

    check(dayOfWeek.findField('Tuesday')?.value).equals(2);
  });

  test('IPropertyValue array type', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Foundation.IPropertyValue')!;

    final method = winTypeDef.findMethod('GetUInt8Array')!;
    check(method.isProperty).isFalse();
    check(method.parameters.length).equals(2);

    final valueSizeParam = method.parameters.first;
    check(valueSizeParam.name).equals('__valueSize');
    check(valueSizeParam.typeIdentifier.baseType)
        .equals(BaseType.pointerTypeModifier);
    check(valueSizeParam.typeIdentifier.typeArg).isNotNull();
    check(valueSizeParam.typeIdentifier.typeArg?.baseType)
        .equals(BaseType.uint32Type);

    final valueParam = method.parameters.last;
    check(valueParam.name).equals('value');
    check(valueParam.typeIdentifier.baseType)
        .equals(BaseType.referenceTypeModifier);
    check(valueParam.typeIdentifier.typeArg).isNotNull();
    check(valueParam.typeIdentifier.typeArg!.baseType)
        .equals(BaseType.simpleArrayType);
    check(valueParam.typeIdentifier.typeArg!.typeArg).isNotNull();
    check(valueParam.typeIdentifier.typeArg!.typeArg!.baseType)
        .equals(BaseType.uint8Type);
  });

  test('IPropertyValueStatics array type', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.IPropertyValueStatics')!;

    final method = winTypeDef.findMethod('CreateUInt8Array')!;
    check(method.isProperty).isFalse();
    check(method.parameters.length).equals(2);

    final valueSizeParam = method.parameters.first;
    check(valueSizeParam.name).equals('__valueSize');
    check(valueSizeParam.typeIdentifier.baseType).equals(BaseType.uint32Type);

    final valueParam = method.parameters.last;
    check(valueParam.name).equals('value');
    check(valueParam.typeIdentifier.baseType).equals(BaseType.simpleArrayType);
    check(valueParam.typeIdentifier.typeArg).isNotNull();
    check(valueParam.typeIdentifier.typeArg!.baseType)
        .equals(BaseType.uint8Type);
  });

  test('Can find generic types', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.IAsyncOperation`1');

    check(winTypeDef).isNotNull();
  });

  test('Can find type information for generic types', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.IAsyncOperation`1')!;

    check(winTypeDef.genericParams.length).equals(1);
    check(winTypeDef.genericParams.first.name).endsWith('TResult');
  });
  test('Can find type information for generic types 2', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.IAsyncOperationWithProgress`2')!;

    check(winTypeDef.genericParams.length).equals(2);
    check(winTypeDef.genericParams.first.name).endsWith('TResult');
    check(winTypeDef.genericParams.last.name).endsWith('TProgress');
  });

  test('Generic method returns the right type', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.IAsyncOperation`1')!;

    final getResults = winTypeDef.findMethod('GetResults')!;
    check(getResults.parameters).isEmpty();
    check(getResults.returnType.typeIdentifier.baseType)
        .equals(BaseType.classVariableTypeModifier);
    check(getResults.returnType.typeIdentifier.genericParameterSequence)
        .equals(0);
  });

  test('Generic put parameter contains the right type', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.IAsyncOperation`1')!;

    final putCompleted = winTypeDef.findMethod('put_Completed')!;
    check(putCompleted.parameters.length).equals(1);
    check(putCompleted.parameters.first.name).equals('handler');
    check(putCompleted.parameters.first.typeIdentifier.baseType)
        .equals(BaseType.genericTypeModifier);
    check(putCompleted.parameters.first.typeIdentifier.name)
        .endsWith('AsyncOperationCompletedHandler`1');
  });

  test('Generic get parameter contains the right type name', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.IAsyncOperation`1')!;

    final getCompleted = winTypeDef.findMethod('get_Completed')!;
    check(getCompleted.returnType.typeIdentifier.baseType)
        .equals(BaseType.genericTypeModifier);
    check(getCompleted.returnType.typeIdentifier.name)
        .endsWith('AsyncOperationCompletedHandler`1');
  });

  test('Events can be found', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.PropertySet')!;

    check(winTypeDef.events.length).equals(1);
    check(winTypeDef.events.first.toString()).equals('MapChanged');
    check(winTypeDef.events.first.name).equals('MapChanged');
  });

  test('Event contains the correct methods and properties', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.PropertySet')!;
    final mapChanged = winTypeDef.events.first;

    check(mapChanged.isRTSpecialName).isFalse();
    check(mapChanged.isSpecialName).isFalse();
    check(mapChanged.addMethod).isNotNull();
    check(mapChanged.removeMethod).isNotNull();
    check(mapChanged.raiseMethod).isNull();
    check(mapChanged.parent).equals(winTypeDef);
  });

  test('Event names are correct', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.PropertySet')!;
    final mapChanged = winTypeDef.events.first;

    check(mapChanged.addMethod!.name).equals('add_MapChanged');
    check(mapChanged.removeMethod!.name).equals('remove_MapChanged');
  });

  test('Generic constraints', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.IAsyncActionWithProgress`1')!;
    final putProgress = winTypeDef.methods.first;
    check(putProgress.hasGenericParameters).isFalse();

    final handler = putProgress.parameters.first;
    check(handler.name).equals('handler');
    check(handler.typeIdentifier.type).isNotNull();
    check(handler.typeIdentifier.type!.name)
        .endsWith('AsyncActionProgressHandler`1');
    check(handler.typeIdentifier.typeArg!.genericParameterSequence).equals(0);

    final aaph = handler.typeIdentifier.type!;
    check(aaph.genericParams.length).equals(1);
  });

  test('Calendar factory interfaces are present', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.Calendar')!;
    final activatableAttrs = winTypeDef.customAttributes
        .where((element) => element.name.endsWith('ActivatableAttribute'))
        .where((element) => element.parameters.length == 3)
        .map((element) => element.parameters.first.value as String);
    check(activatableAttrs)
      ..contains('Windows.Globalization.ICalendarFactory2')
      ..contains('Windows.Globalization.ICalendarFactory');
  });
}

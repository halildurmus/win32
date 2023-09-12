// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  late Scope win32Scope;
  late Scope winrtScope;

  setUpAll(() async {
    win32Scope = await MetadataStore.loadWin32Metadata();
    winrtScope = await MetadataStore.loadWinRTMetadata();
  });

  test('List all tokens in a file', () {
    // This is 99 on Windows Server 2019, 104 on Windows 10 2004. The exact
    // number is less critical than that this returns a sane result.
    check(winrtScope.typeDefs.length).isGreaterThan(50);
  });

  test('Scope version string returns expected result', () {
    check(winrtScope.version).startsWith('WindowsRuntime');
  });

  test('Scope modules contain expected user strings', () {
    check(win32Scope.userStrings.length).equals(0);
    check(winrtScope.userStrings.length).equals(1);
    check(winrtScope.userStrings.first).equals(' ');
  });

  test('Find a specific WinMD token', () {
    final typeDef = winrtScope.findTypeDef('Windows.Globalization.Calendar');
    check(typeDef).isNotNull();
    // The number token ID may change from build to build, but the highest order
    // byte should always be 0x02
    check(typeDef!.token & 0x02000000).equals(0x02000000);
  });

  test('Get IAsyncInfo methods', () {
    final typeDef = winrtScope.findTypeDef('Windows.Foundation.IAsyncInfo');
    check(typeDef).isNotNull();
    final methods = typeDef!.methods;
    check(methods[0].name).equals('get_Id');
    check(methods[1].name).equals('get_Status');
    check(methods[2].name).equals('get_ErrorCode');
    check(methods[3].name).equals('Cancel');
    check(methods[4].name).equals('Close');
  });

  test('Calendar.HourAsPaddedString method properties', () {
    final typeDef = winrtScope.findTypeDef('Windows.Globalization.Calendar');
    check(typeDef).isNotNull();
    final methods = typeDef!.methods;
    check(methods[75].isFinal).isTrue();
    check(methods[75].isSpecialName).isFalse();
    check(methods[75].isStatic).isFalse();
    check(methods[75].isVirtual).isTrue();
    check(methods[75].memberAccess).equals(MemberAccess.public);
    check(methods[75].name).equals('HourAsPaddedString');
  });

  test('A given interface correctly identifies the interfaces it requires', () {
    final typeDef = winrtScope.findTypeDef('Windows.Foundation.IAsyncAction');
    check(typeDef).isNotNull();
    final interfaces = typeDef!.interfaces;
    check(interfaces.length).equals(1);
    check(interfaces.first.name).equals('Windows.Foundation.IAsyncInfo');
  });

  test('Class that implements multiple interfaces correctly identifies them',
      () {
    final typeDef = winrtScope.findTypeDef('Windows.UI.Xaml.Controls.Button');
    check(typeDef).isNotNull();
    final interfaces = typeDef!.interfaces;
    check(interfaces.map((e) => e.name)).which(it()
      ..length.equals(2)
      ..contains('Windows.UI.Xaml.Controls.IButton')
      ..contains('Windows.UI.Xaml.Controls.IButtonWithFlyout'));
  });

  test('Class that extends a parent correctly reports it', () {
    final typeDef = winrtScope.findTypeDef('Windows.UI.Xaml.Controls.Button');
    check(typeDef).isNotNull();
    final parent = typeDef!.parent;
    check(parent).isNotNull();
    check(parent!.name)
        .equals('Windows.UI.Xaml.Controls.Primitives.ButtonBase');
  });

  test('Generic return type <T> can be parsed', () {
    final typeDef =
        winrtScope.findTypeDef('Windows.Foundation.Collections.IVectorView`1');
    check(typeDef).isNotNull();
    final method = typeDef!.methods.first;
    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.classVariableTypeModifier);
  });

  test('Generic class can be parsed', () {
    final typeDef =
        winrtScope.findTypeDef('Windows.Foundation.Collections.IVectorView`1');
    check(typeDef).isNotNull();
    check(typeDef!.methods.length).isGreaterOrEqual(4);
  });

  test('Find interfaces returns sane results with IDictionary<string, object>',
      () {
    final typeDef =
        winrtScope.findTypeDef('Windows.Foundation.Collections.IPropertySet');
    check(typeDef).isNotNull();
    final interfaces = typeDef!.interfaces;
    check(interfaces.length).equals(3);

    final imap = interfaces[1];
    check(imap.tokenType).equals(TokenType.typeSpec);
    check(imap.typeSpec?.baseType).equals(BaseType.genericTypeModifier);
    check(imap.typeSpec!.name).equals('Windows.Foundation.Collections.IMap`2');
    check(imap.typeSpec?.typeArg).isNotNull();
    check(imap.typeSpec?.typeArg?.baseType).equals(BaseType.stringType);
    check(imap.typeSpec?.typeArg?.typeArg).isNotNull();
    check(imap.typeSpec?.typeArg?.typeArg?.baseType)
        .equals(BaseType.objectType);
  });

  test('Find interfaces returns sane results with IEnumerable<class>', () {
    final typeDef = winrtScope
        .findTypeDef('Windows.Media.Playback.PlaybackMediaMarkerSequence');
    check(typeDef).isNotNull();
    final interfaces = typeDef!.interfaces;
    check(interfaces.length).equals(2);
    check(interfaces.first.name).endsWith('IPlaybackMediaMarkerSequence');
    check(interfaces.last.typeSpec!.typeArg!.name)
        .endsWith('PlaybackMediaMarker');
  });

  test('Interface GUID is correct', () {
    final typeDef = winrtScope.findTypeDef('Windows.Globalization.ICalendar');
    check(typeDef).isNotNull();
    final guid = typeDef!.guid;
    check(guid).isNotNull();
    check(guid).equals('{ca30221d-86d9-40fb-a26b-d44eb7cf08ea}');
  });

  test('Interface is correctly identified', () {
    final typeDef = winrtScope.findTypeDef('Windows.Globalization.ICalendar');
    check(typeDef).isNotNull();
    check(typeDef!.isInterface).isTrue();
    check(typeDef.isClass).isFalse();
    check(typeDef.representsAsClass).isFalse();
  });

  test('Class is correctly identified', () {
    final typeDef = winrtScope.findTypeDef('Windows.Globalization.Calendar');
    check(typeDef).isNotNull();
    check(typeDef!.isClass).isTrue();
    check(typeDef.isInterface).isFalse();
    check(typeDef.representsAsClass).isTrue();
  });

  test('Calendar.AddDays() method is correct', () {
    final typeDef = winrtScope.findTypeDef('Windows.Globalization.ICalendar');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('AddDays');
    check(method).isNotNull();
    check(method!.isProperty).isFalse();
    check(method.parameters.length).equals(1);
    check(method.parameters.first.typeIdentifier.baseType)
        .equals(BaseType.int32Type);
    check(method.parameters.first.name).equals('days');
    check(method.returnType.typeIdentifier.baseType).equals(BaseType.voidType);
  });

  test('Calendar.YearAsString() method is correct', () {
    final typeDef = winrtScope.findTypeDef('Windows.Globalization.ICalendar');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('YearAsString');
    check(method).isNotNull();
    check(method!.isProperty).isFalse();
    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.stringType);
    check(method.parameters.length).equals(0);
  });

  test('Calendar.MonthAsPaddedNumericString() method is correct', () {
    final typeDef = winrtScope.findTypeDef('Windows.Globalization.ICalendar');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('MonthAsPaddedNumericString');
    check(method).isNotNull();
    check(method!.isProperty).isFalse();
    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.stringType);
    check(method.parameters.length).equals(1);
    check(method.parameters.first.typeIdentifier.baseType)
        .equals(BaseType.int32Type);
    check(method.parameters.first.name).equals('minDigits');
  });

  test('Calendar.SetToNow() method is correct', () {
    final typeDef = winrtScope.findTypeDef('Windows.Globalization.ICalendar');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('SetToNow');
    check(method).isNotNull();
    check(method!.isProperty).isFalse();
    check(method.returnType.typeIdentifier.baseType).equals(BaseType.voidType);
    check(method.parameters.length).equals(0);
  });

  test('Calendar.GetDateTime() method is correct', () {
    final typeDef = winrtScope.findTypeDef('Windows.Globalization.ICalendar');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('GetDateTime');
    check(method).isNotNull();
    check(method!.isProperty).isFalse();
    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(method.returnType.typeIdentifier.name).endsWith('DateTime');
    check(method.parameters.length).equals(0);
  });

  test('Calendar.SetToNow() calling convention is correct', () {
    final typeDef = winrtScope.findTypeDef('Windows.Globalization.ICalendar');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('SetToNow');
    check(method).isNotNull();
    check(method!.callingConvention).equals('default instance ');
  });

  test('Calendar.Day getter property is correct', () {
    final typeDef = winrtScope.findTypeDef('Windows.Globalization.ICalendar');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('get_Day');
    check(method).isNotNull();
    check(method!.isGetProperty).isTrue();
    check(method.isProperty).isTrue();
    check(method.isSetProperty).isFalse();
    check(method.isSpecialName).isTrue();
    check(method.parameters.length).equals(0);
    check(method.returnType.typeIdentifier.baseType).equals(BaseType.int32Type);
  });

  test('Calendar.Day setter property is correct', () {
    final typeDef = winrtScope.findTypeDef('Windows.Globalization.ICalendar');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('put_Day');
    check(method).isNotNull();
    check(method!.isGetProperty).isFalse();
    check(method.isProperty).isTrue();
    check(method.isSetProperty).isTrue();
    check(method.isSpecialName).isTrue();
    check(method.parameters.length).equals(1);
    check(method.parameters.first.typeIdentifier.baseType)
        .equals(BaseType.int32Type);
    check(method.returnType.typeIdentifier.baseType).equals(BaseType.voidType);
  });

  test('Calendar.Languages getter property is correct', () {
    final typeDef = winrtScope.findTypeDef('Windows.Globalization.ICalendar');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('get_Languages');
    check(method).isNotNull();
    check(method!.isGetProperty).isTrue();
    check(method.isProperty).isTrue();
    check(method.isSetProperty).isFalse();
    check(method.parameters.length).equals(0);
    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.genericTypeModifier);
    check(method.returnType.typeIdentifier.type?.name)
        .equals('Windows.Foundation.Collections.IVectorView`1');
    check(method.returnType.typeIdentifier.type!.representsAsClass).isFalse();
    check(method.returnType.typeIdentifier.type!.isInterface).isTrue();
  });

  test('Property setter for a class type is correct', () {
    final typeDef =
        winrtScope.findTypeDef('Windows.Storage.Pickers.IFileOpenPicker');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('put_ViewMode');
    check(method).isNotNull();
    check(method!.isGetProperty).isFalse();
    check(method.isProperty).isTrue();
    check(method.isSetProperty).isTrue();
    check(method.isSpecialName).isTrue();
    check(method.parameters.length).equals(1);
    check(method.parameters.first.typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(method.parameters.first.typeIdentifier.name)
        .equals('Windows.Storage.Pickers.PickerViewMode');
    check(method.returnType.typeIdentifier.baseType).equals(BaseType.voidType);
  });

  test('Property getter returns appropriate results for interface.', () {
    final typeDef =
        winrtScope.findTypeDef('Windows.Media.Playback.MediaPlayer');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('get_Source');
    check(method).isNotNull();
    check(method!.returnType.typeIdentifier.baseType)
        .equals(BaseType.classTypeModifier);
    check(method.returnType.typeIdentifier.name)
        .endsWith('IMediaPlaybackSource');
  });

  test('Property getter returns appropriate results for delegate.', () {
    final typeDef = winrtScope.findTypeDef('Windows.Foundation.IAsyncAction');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('get_Completed');
    check(method).isNotNull();
    check(method!.isGetProperty).isTrue();
    check(method.returnType.name).equals('handler');
    check(method.returnType.typeIdentifier.name)
        .endsWith('AsyncActionCompletedHandler');
  });

  test('Property setter returns appropriate results for delegate.', () {
    final typeDef = winrtScope.findTypeDef('Windows.Foundation.IAsyncAction');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('put_Completed');
    check(method).isNotNull();
    check(method!.isSetProperty).isTrue();
    check(method.parameters.first.name).equals('handler');
    check(method.parameters.first.typeIdentifier.name)
        .endsWith('AsyncActionCompletedHandler');
  });

  test('String parameters are accurately represented', () {
    final typeDef = winrtScope.findTypeDef('Windows.Globalization.ICalendar');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('ChangeCalendarSystem');
    check(method).isNotNull();
    check(method!.isGetProperty).isFalse();
    check(method.isProperty).isFalse();
    check(method.isSetProperty).isFalse();
    check(method.isSpecialName).isFalse();
    check(method.parameters.first.typeIdentifier.baseType)
        .equals(BaseType.stringType);
  });

  test('Calendar.Clone return value is correct', () {
    final typeDef = winrtScope.findTypeDef('Windows.Globalization.ICalendar');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('Clone');
    check(method).isNotNull();
    check(method!.parameters.length).equals(0);
    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.classTypeModifier);
    check(method.returnType.typeIdentifier.name)
        .equals('Windows.Globalization.Calendar');
  });

  test('String array property return type is correct', () {
    final typeDef = winrtScope.findTypeDef('Windows.Globalization.ICalendar');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('get_Languages');
    check(method).isNotNull();
    check(method!.parameters.length).equals(0);
    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.genericTypeModifier);
    check(method.returnType.typeIdentifier.name)
        .equals('Windows.Foundation.Collections.IVectorView`1');
    check(method.returnType.typeIdentifier.typeArg).isNotNull();
    check(method.returnType.typeIdentifier.typeArg?.baseType)
        .equals(BaseType.stringType);
  });

  test('Calendar.PeriodAsFullString overload is correctly represented', () {
    final typeDef = winrtScope.findTypeDef('Windows.Globalization.ICalendar');
    check(typeDef).isNotNull();
    final methods = typeDef!.methods.where((m) => m.name == 'PeriodAsString');
    check(methods.length).equals(2);

    for (final method in methods) {
      final overloadName = method
          .attributeAsString('Windows.Foundation.Metadata.OverloadAttribute');
      check(overloadName).anyOf(
          [it()..equals('PeriodAsFullString'), it()..equals('PeriodAsString')]);
    }
  });

  test('Calendar.YearAsTruncatedString method is correct', () {
    final typeDef = winrtScope.findTypeDef('Windows.Globalization.ICalendar');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('YearAsTruncatedString');
    check(method).isNotNull();
    check(method!.isProperty).isFalse();
    check(method.isSpecialName).isFalse();
    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.stringType);
    check(method.parameters.length).equals(1);
    check(method.parameters.first.name).equals('remainingDigits');
    check(method.parameters.first.typeIdentifier.baseType)
        .equals(BaseType.int32Type);
  });

  test('Method with one parameter and return value is correct', () {
    final typeDef = winrtScope.findTypeDef('Windows.Globalization.Calendar');
    check(typeDef).isNotNull();
    final method =
        typeDef!.methods.where((m) => m.name == 'MonthAsString').firstWhere(
              (m) =>
                  m.attributeAsString(
                      'Windows.Foundation.Metadata.OverloadAttribute') ==
                  'MonthAsString',
            );
    check(method.isProperty).isFalse();
    check(method.isSpecialName).isFalse();
    check(method.parameters.length).equals(1);
    check(method.parameters.first.name).equals('idealLength');
    check(method.parameters.first.typeIdentifier.baseType)
        .equals(BaseType.int32Type);
    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.stringType);
  });

  test('Method with multiple parameters and no return value is correct', () {
    final typeDef =
        winrtScope.findTypeDef('Windows.Storage.Provider.CachedFileUpdater');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('SetUpdateInformation');
    check(method).isNotNull();
    check(method!.isProperty).isFalse();
    check(method.returnType.typeIdentifier.baseType).equals(BaseType.voidType);
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

  test('Method with const reference parameters is correct', () {
    final typeDef =
        winrtScope.findTypeDef('Windows.Foundation.IGuidHelperStatics');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('Equals');
    check(method).isNotNull();
    check(method!.isProperty).isFalse();
    check(method.parameters.length).equals(2);
    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.booleanType);

    final [targetParam, valueParam] = method.parameters;

    check(targetParam.isInParam).isTrue();
    check(targetParam.name).equals('target');
    check(targetParam.typeIdentifier.baseType)
        .equals(BaseType.cLanguageOptionalModifier);
    check(targetParam.typeIdentifier.name)
        .equals('System.Runtime.CompilerServices.IsConst');
    check(targetParam.typeIdentifier.type).isNotNull();
    check(targetParam.typeIdentifier.type!.name)
        .equals('System.Runtime.CompilerServices.IsConst');
    check(targetParam.typeIdentifier.typeArg).isNotNull();
    check(targetParam.typeIdentifier.typeArg!.baseType)
        .equals(BaseType.referenceTypeModifier);
    check(targetParam.typeIdentifier.typeArg!.typeArg).isNotNull();
    check(targetParam.typeIdentifier.typeArg!.typeArg!.baseType)
        .equals(BaseType.valueTypeModifier);
    check(targetParam.typeIdentifier.typeArg!.typeArg!.name)
        .equals('System.Guid');

    check(valueParam.isInParam).isTrue();
    check(valueParam.name).equals('value');
    check(valueParam.typeIdentifier.baseType)
        .equals(BaseType.cLanguageOptionalModifier);
    check(valueParam.typeIdentifier.name)
        .equals('System.Runtime.CompilerServices.IsConst');
    check(valueParam.typeIdentifier.type).isNotNull();
    check(valueParam.typeIdentifier.type!.name)
        .equals('System.Runtime.CompilerServices.IsConst');
    check(valueParam.typeIdentifier.typeArg).isNotNull();
    check(valueParam.typeIdentifier.typeArg!.baseType)
        .equals(BaseType.referenceTypeModifier);
    check(valueParam.typeIdentifier.typeArg!.typeArg).isNotNull();
    check(valueParam.typeIdentifier.typeArg!.typeArg!.baseType)
        .equals(BaseType.valueTypeModifier);
    check(valueParam.typeIdentifier.typeArg!.typeArg!.name)
        .equals('System.Guid');
  });

  test('Method with simple array parameters is correct 1', () {
    final typeDef = winrtScope
        .findTypeDef('Windows.AI.MachineLearning.ITensorBooleanStatics2');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('CreateFromShapeArrayAndDataArray');
    check(method).isNotNull();
    check(method!.isProperty).isFalse();
    check(method.parameters.length).equals(4);
    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.classTypeModifier);

    final [shapeSizeParam, shapeParam, dataSizeParam, dataParam] =
        method.parameters;

    check(shapeSizeParam.isInParam).isTrue();
    check(shapeSizeParam.isOutParam).isFalse();
    check(shapeSizeParam.name).equals('__shapeSize');
    check(shapeSizeParam.typeIdentifier.baseType).equals(BaseType.uint32Type);

    check(shapeParam.isInParam).isTrue();
    check(shapeParam.isOutParam).isFalse();
    check(shapeParam.name).equals('shape');
    check(shapeParam.typeIdentifier.baseType).equals(BaseType.simpleArrayType);

    check(dataSizeParam.isInParam).isTrue();
    check(dataSizeParam.isOutParam).isFalse();
    check(dataSizeParam.name).equals('__dataSize');
    check(dataSizeParam.typeIdentifier.baseType).equals(BaseType.uint32Type);

    check(dataParam.isInParam).isTrue();
    check(dataParam.isOutParam).isFalse();
    check(dataParam.name).equals('data');
    check(dataParam.typeIdentifier.baseType).equals(BaseType.simpleArrayType);
  });

  test('Method with simple array parameters is correct 2', () {
    final typeDef =
        winrtScope.findTypeDef('Windows.Storage.Pickers.FileExtensionVector');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('GetMany');
    check(method).isNotNull();
    check(method!.isProperty).isFalse();
    check(method.parameters.length).equals(3);
    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.uint32Type);

    final [startIndexParam, itemsSizeParam, itemsParam] = method.parameters;

    check(startIndexParam.name).equals('startIndex');
    check(startIndexParam.typeIdentifier.baseType).equals(BaseType.uint32Type);

    check(itemsSizeParam.isInParam).isTrue();
    check(itemsSizeParam.isOutParam).isFalse();
    check(itemsSizeParam.name).equals('__itemsSize');
    check(itemsSizeParam.typeIdentifier.baseType).equals(BaseType.uint32Type);

    check(itemsParam.isInParam).isFalse();
    check(itemsParam.isOutParam).isTrue();
    check(itemsParam.name).equals('items');
    check(itemsParam.typeIdentifier.baseType).equals(BaseType.simpleArrayType);
  });

  test('Reference parameter is correct', () {
    final typeDef = winrtScope.findTypeDef(
        'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('TryCreate');
    check(method).isNotNull();

    final phoneNumberParam = method!.parameters.last;
    // [out] class [Windows.Globalization.winmd]Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter& phoneNumber
    check(phoneNumberParam.name).equals('phoneNumber');
    check(phoneNumberParam.typeIdentifier.baseType)
        .equals(BaseType.referenceTypeModifier);

    final refType = phoneNumberParam.typeIdentifier.typeArg;
    check(refType).isNotNull();
    check(refType!.name).equals(
        'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter');
    check(refType.type).equals(typeDef);
  });

  test('Method with generic return value is correct', () {
    final typeDef = winrtScope
        .findTypeDef('Windows.Globalization.JapanesePhoneticAnalyzer');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('GetWords');
    check(method).isNotNull();
    check(method!.parameters.length).equals(2);
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
    final typeDef = winrtScope.findTypeDef('Windows.Globalization.ICalendar');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('Clone');
    check(method).isNotNull();
    check(method!.isProperty).isFalse();
    check(method.isSpecialName).isFalse();
    check(method.parameters.length).equals(0);
    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.classTypeModifier);
    check(method.returnType.name).equals('value');
  });

  test('IAsyncInfo.Status get property is correct', () {
    final typeDef = winrtScope.findTypeDef('Windows.Foundation.IAsyncInfo');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('get_Status');
    check(method).isNotNull();
    check(method!.isGetProperty).isTrue();
    check(method.isProperty).isTrue();
    check(method.isSetProperty).isFalse();
    check(method.isSpecialName).isTrue();
    check(method.parameters.length).equals(0);
    check(method.returnType.typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(method.returnType.typeIdentifier.name)
        .equals('Windows.Foundation.AsyncStatus');
  });

  test('findMethod() fails gracefully', () {
    final typeDef = winrtScope.findTypeDef('Windows.Globalization.ICalendar');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('whoLetTheDogsOut');
    check(method).isNull();
  });

  test('Retrieve enums', () {
    check(winrtScope.enums.length).isGreaterOrEqual(1500);
  });

  test('Evaluate an enum has the right number of fields', () {
    final dayOfWeek = winrtScope.findTypeDef('Windows.Globalization.DayOfWeek');
    check(dayOfWeek).isNotNull();
    check(dayOfWeek!.fields.length).equals(8); // includes the 'value__' field
  });

  test('Evaluate an enum has the right values', () {
    final dayOfWeek = winrtScope.findTypeDef('Windows.Globalization.DayOfWeek');
    check(dayOfWeek).isNotNull();
    check(dayOfWeek!.findField('Tuesday')?.value).equals(2);
  });

  test('IPropertyValue array type', () {
    final typeDef = winrtScope.findTypeDef('Windows.Foundation.IPropertyValue');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('GetUInt8Array');
    check(method).isNotNull();
    check(method!.isProperty).isFalse();
    check(method.parameters.length).equals(2);

    final [valueSizeParam, valueParam] = method.parameters;

    check(valueSizeParam.isInParam).isFalse();
    check(valueSizeParam.isOutParam).isTrue();
    check(valueSizeParam.name).equals('__valueSize');
    check(valueSizeParam.typeIdentifier.baseType)
        .equals(BaseType.pointerTypeModifier);
    check(valueSizeParam.typeIdentifier.typeArg).isNotNull();
    check(valueSizeParam.typeIdentifier.typeArg?.baseType)
        .equals(BaseType.uint32Type);

    check(valueSizeParam.isInParam).isFalse();
    check(valueSizeParam.isOutParam).isTrue();
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
    final typeDef =
        winrtScope.findTypeDef('Windows.Foundation.IPropertyValueStatics');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('CreateUInt8Array');
    check(method).isNotNull();
    check(method!.isProperty).isFalse();
    check(method.parameters.length).equals(2);

    final [valueSizeParam, valueParam] = method.parameters;

    check(valueSizeParam.isInParam).isTrue();
    check(valueSizeParam.isOutParam).isFalse();
    check(valueSizeParam.name).equals('__valueSize');
    check(valueSizeParam.typeIdentifier.baseType).equals(BaseType.uint32Type);

    check(valueParam.isInParam).isTrue();
    check(valueParam.isOutParam).isFalse();
    check(valueParam.name).equals('value');
    check(valueParam.typeIdentifier.baseType).equals(BaseType.simpleArrayType);
    check(valueParam.typeIdentifier.typeArg).isNotNull();
    check(valueParam.typeIdentifier.typeArg!.baseType)
        .equals(BaseType.uint8Type);
  });

  test('Can find generic types', () {
    final typeDef =
        winrtScope.findTypeDef('Windows.Foundation.IAsyncOperation`1');
    check(typeDef).isNotNull();
  });

  test('Can find type information for generic types', () {
    final typeDef =
        winrtScope.findTypeDef('Windows.Foundation.IAsyncOperation`1');
    check(typeDef).isNotNull();
    final genericParams = typeDef!.genericParams;
    check(genericParams.length).equals(1);
    check(genericParams.first.name).endsWith('TResult');
  });
  test('Can find type information for generic types 2', () {
    final typeDef = winrtScope
        .findTypeDef('Windows.Foundation.IAsyncOperationWithProgress`2');
    check(typeDef).isNotNull();
    final genericParams = typeDef!.genericParams;
    check(genericParams.length).equals(2);
    check(genericParams.first.name).endsWith('TResult');
    check(genericParams.last.name).endsWith('TProgress');
  });

  test('Generic method returns the right type', () {
    final typeDef =
        winrtScope.findTypeDef('Windows.Foundation.IAsyncOperation`1');
    check(typeDef).isNotNull();
    final getResults = typeDef!.findMethod('GetResults');
    check(getResults).isNotNull();
    check(getResults!.parameters).isEmpty();
    check(getResults.returnType.typeIdentifier.baseType)
        .equals(BaseType.classVariableTypeModifier);
    check(getResults.returnType.typeIdentifier.genericParameterSequence)
        .equals(0);
  });

  test('Generic put parameter contains the right type', () {
    final typeDef =
        winrtScope.findTypeDef('Windows.Foundation.IAsyncOperation`1');
    check(typeDef).isNotNull();
    final putCompleted = typeDef!.findMethod('put_Completed');
    check(putCompleted).isNotNull();
    check(putCompleted!.parameters.length).equals(1);
    check(putCompleted.parameters.first.name).equals('handler');
    check(putCompleted.parameters.first.typeIdentifier.baseType)
        .equals(BaseType.genericTypeModifier);
    check(putCompleted.parameters.first.typeIdentifier.name)
        .endsWith('AsyncOperationCompletedHandler`1');
  });

  test('Generic get parameter contains the right type name', () {
    final typeDef =
        winrtScope.findTypeDef('Windows.Foundation.IAsyncOperation`1');
    check(typeDef).isNotNull();
    final getCompleted = typeDef!.findMethod('get_Completed');
    check(getCompleted).isNotNull();
    check(getCompleted!.returnType.typeIdentifier.baseType)
        .equals(BaseType.genericTypeModifier);
    check(getCompleted.returnType.typeIdentifier.name)
        .endsWith('AsyncOperationCompletedHandler`1');
  });

  test('Events can be found', () {
    final typeDef =
        winrtScope.findTypeDef('Windows.Foundation.Collections.PropertySet');
    check(typeDef).isNotNull();
    final events = typeDef!.events;
    check(events.length).equals(1);
    check(events.first.toString()).equals('MapChanged');
    check(events.first.name).equals('MapChanged');
  });

  test('Event contains the correct methods and properties', () {
    final typeDef =
        winrtScope.findTypeDef('Windows.Foundation.Collections.PropertySet');
    check(typeDef).isNotNull();
    final mapChanged = typeDef!.events.first;
    check(mapChanged.addMethod).isNotNull();
    check(mapChanged.isRTSpecialName).isFalse();
    check(mapChanged.isSpecialName).isFalse();
    check(mapChanged.parent).equals(typeDef);
    check(mapChanged.raiseMethod).isNull();
    check(mapChanged.removeMethod).isNotNull();
  });

  test('Event names are correct', () {
    final typeDef =
        winrtScope.findTypeDef('Windows.Foundation.Collections.PropertySet');
    check(typeDef).isNotNull();
    final mapChanged = typeDef!.events.first;
    final addMethod = mapChanged.addMethod;
    check(addMethod).isNotNull();
    check(addMethod!.name).equals('add_MapChanged');
    final removeMethod = mapChanged.removeMethod;
    check(removeMethod).isNotNull();
    check(removeMethod!.name).equals('remove_MapChanged');
  });

  test('Generic constraints', () {
    final typeDef =
        winrtScope.findTypeDef('Windows.Foundation.IAsyncActionWithProgress`1');
    check(typeDef).isNotNull();
    final putProgress = typeDef!.methods.first;
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

  test('Generic parameter type like Foo<Bar<T>, Baz> can be parsed', () {
    final typeDef =
        winrtScope.findTypeDef('Windows.Devices.Sms.GetSmsMessagesOperation');
    check(typeDef).isNotNull();
    final putProgress = typeDef!.findMethod('put_Progress');
    check(putProgress).isNotNull();
    check(putProgress!.hasGenericParameters).isFalse();

    final handler = putProgress.parameters.first;
    check(handler.name).equals('handler');
    check(handler.typeIdentifier.type).isNotNull();
    check(handler.typeIdentifier.type!.name)
        .endsWith('AsyncOperationProgressHandler`2');
    check(handler.typeIdentifier.typeArg!.type).isNotNull();
    check(handler.typeIdentifier.typeArg!.type!.name).endsWith('IVectorView`1');
    check(handler.typeIdentifier.typeArg!.typeArg!.name)
        .endsWith('ISmsMessage');
    check(handler.typeIdentifier.typeArg!.typeArg!.typeArg!.baseType)
        .equals(BaseType.int32Type);

    final aoph = handler.typeIdentifier.type!;
    check(aoph.genericParams.length).equals(2);
  });

  test('Calendar factory interfaces are present', () {
    final typeDef = winrtScope.findTypeDef('Windows.Globalization.Calendar');
    check(typeDef).isNotNull();
    final activatableAttributes = typeDef!.customAttributes
        .where((element) => element.name.endsWith('ActivatableAttribute'))
        .where((element) => element.parameters.length == 3)
        .map((element) => element.parameters.first.value as String);
    check(activatableAttributes)
      ..contains('Windows.Globalization.ICalendarFactory2')
      ..contains('Windows.Globalization.ICalendarFactory');
  });

  tearDownAll(MetadataStore.close);
}

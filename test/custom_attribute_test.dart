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

  test('Custom attribute has a name', () {
    final typeDef = winrtScope.findTypeDef('Windows.Media.MediaControl');
    check(typeDef).isNotNull();
    check(typeDef!.customAttributes.length).equals(5);

    final attributes = typeDef.customAttributes.map((a) => a.toString());
    check(attributes)
        .contains('Windows.Foundation.Metadata.DeprecatedAttribute');
  });

  test('Custom attribute in WinRT is correctly specified', () {
    final typeDef = winrtScope.findTypeDef('Windows.Media.MediaControl');
    check(typeDef).isNotNull();

    final deprecatedAttr = typeDef!.customAttributes
        .where((a) => a.name.endsWith('DeprecatedAttribute'))
        .firstOrNull;
    check(deprecatedAttr).isNotNull();
    check(deprecatedAttr!.signatureBlob.sublist(0, 2).toList())
        .deepEquals([0x01, 0x00]); // prolog

    // final ref = MemberRef.fromToken(deprecated.scope, 0x0A000015);
    // check(ref.signatureBlob.length).equals(9);
    // check(ref.signatureBlob.toList()).containsInOrder([0x20, 0x04, 0x01, 0x0e]);

    check(deprecatedAttr.constructor.name).endsWith('DeprecatedAttribute');
    check(deprecatedAttr.memberRef.name).equals('.ctor');
    check(deprecatedAttr.memberRef.tokenType).equals(TokenType.memberRef);

    check(deprecatedAttr.parameters.length).equals(4);
    final [firstParam, secondParam, thirdParam, fourthParam] =
        deprecatedAttr.parameters;

    check(firstParam.type.baseType).equals(BaseType.stringType);
    check(firstParam.value).isA<String>();
    check(firstParam.value)
        .equals('MediaControl may be altered or unavailable for releases after '
            'Windows 8.1. Instead, use SystemMediaTransportControls.');

    check(secondParam.type.baseType).equals(BaseType.valueTypeModifier);
    check(secondParam.value).isA<int>();
    check(secondParam.value).equals(0);

    check(thirdParam.type.baseType).equals(BaseType.uint32Type);
    check(thirdParam.value).isA<int>();
    check(thirdParam.value).equals(65536);

    check(fourthParam.type.baseType).equals(BaseType.stringType);
    check(fourthParam.value).isA<String>();
    check(fourthParam.value).equals('Windows.Media.MediaControlContract');
  });

  test('Custom attribute in Win32 is correctly specified', () {
    final typeDef =
        win32Scope.findTypeDef('Windows.Win32.UI.Shell.SHELLEXECUTEINFOW');
    check(typeDef).isNotNull();

    final archAttr = typeDef!.customAttributes
        .where((a) => a.name.endsWith('SupportedArchitectureAttribute'))
        .firstOrNull;
    check(archAttr).isNotNull();

    check(archAttr!.signatureBlob.sublist(0, 2).toList())
        .deepEquals([0x01, 0x00]); // prolog

    check(archAttr.parameters.length).equals(1);
    final [archAttrParam] = archAttr.parameters;
    check(archAttrParam.type.baseType).equals(BaseType.valueTypeModifier);
    check(archAttrParam.type.name)
        .equals('Windows.Win32.Foundation.Metadata.Architecture');
    check(archAttrParam.value).isA<int>();
    // Depending on which one we get first, we'll either get ARM or X86/X64
    check(archAttrParam.value).anyOf([it()..equals(0x01), it()..equals(0x06)]);
  });

  test('Multiple custom attributes with same name', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.Foundation.HRSRC');
    check(typeDef).isNotNull();

    check(typeDef!.customAttributes.length).equals(3);

    final invalidHandleValues = typeDef.customAttributes.where(
        (element) => element.name.endsWith('InvalidHandleValueAttribute'));
    check(invalidHandleValues.length).equals(2);

    final [firstAttr, secondAttr] = invalidHandleValues.toList();
    check(firstAttr.parameters.first.type.baseType).equals(BaseType.int64Type);
    check(firstAttr.parameters.first.value)
        .anyOf([it()..equals(-1), it()..equals(0)]);

    check(secondAttr.parameters.first.type.baseType).equals(BaseType.int64Type);
    check(secondAttr.parameters.first.value)
        .anyOf([it()..equals(-1), it()..equals(0)]);
  });

  test('Find a matching attribute', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.Foundation.HWND');
    check(typeDef).isNotNull();
    check(typeDef!.existsAttribute(
            'Windows.Win32.Foundation.Metadata.NativeTypedefAttribute'))
        .isTrue();
  });

  test('Missing attributes are not found', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.Foundation.HWND');
    check(typeDef).isNotNull();
    check(typeDef!.existsAttribute('Windows.SparklesTheCatAttribute'))
        .isFalse();
  });

  test('Uint16 and Uint8', () {
    final typeDef =
        winrtScope.findTypeDef('Windows.UI.Notifications.IToastNotification');
    check(typeDef).isNotNull();
    final guidAttr =
        typeDef!.findAttribute('Windows.Foundation.Metadata.GuidAttribute');
    check(guidAttr!.parameters.length).equals(11);
    check(guidAttr.parameters[0].value).equals(0x997e2675);
    check(guidAttr.parameters[1].value).equals(0x059e);
    check(guidAttr.parameters[2].value).equals(0x4e60);
    check(guidAttr.parameters[3].value).equals(0x8b);
    check(guidAttr.parameters[4].value).equals(0x06);
    check(guidAttr.parameters[10].value).equals(0x80);
  });

  test('Minimum Windows version', () {
    final typeDef =
        win32Scope.findTypeDef('Windows.Win32.Devices.Communication.Apis');
    check(typeDef).isNotNull();
    final getCommPorts = typeDef!.findMethod('GetCommPorts');
    check(getCommPorts).isNotNull();
    final minVersion = getCommPorts!.findAttribute(
        'Windows.Win32.Foundation.Metadata.SupportedOSPlatformAttribute');
    check(minVersion).isNotNull();
    check(minVersion!.parameters.length).equals(1);
    check(minVersion.parameters.first.value).equals('windows10.0.17134');
  });

  tearDownAll(MetadataStore.close);
}

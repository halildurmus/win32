// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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

  group('Test Win32 field properties', () {
    test('AUDIO_MIN_FRAMERATE', () {
      final typeDef =
          win32Scope.findTypeDef('Windows.Win32.Media.Audio.Apo.Apis');
      check(typeDef).isNotNull();
      final field = typeDef!.findField('AUDIO_MIN_FRAMERATE');
      check(field).isNotNull();
      check(field!.fieldType).equals(BaseType.doubleType);
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.hasDefault).isTrue();
      check(field.hasFieldMarshal).isFalse();
      check(field.hasFieldRVA).isFalse();
      check(field.isInitOnly).isFalse();
      check(field.isLiteral).isTrue();
      check(field.isNotSerialized).isFalse();
      check(field.isPinvokeImpl).isFalse();
      check(field.isRTSpecialName).isFalse();
      check(field.isSpecialName).isFalse();
      check(field.isStatic).isTrue();
      check(field.parent).equals(typeDef);
      check(field.value).isA<double>();
      check(field.value).equals(10.0);
    });

    test('CRYPT_OID_REGPATH', () {
      final typeDef =
          win32Scope.findTypeDef('Windows.Win32.Security.Cryptography.Apis');
      check(typeDef).isNotNull();
      final field = typeDef!.findField('CRYPT_OID_REGPATH');
      check(field).isNotNull();
      check(field!.fieldType).equals(BaseType.stringType);
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.hasDefault).isTrue();
      check(field.hasFieldMarshal).isFalse();
      check(field.hasFieldRVA).isFalse();
      check(field.isInitOnly).isFalse();
      check(field.isLiteral).isTrue();
      check(field.isNotSerialized).isFalse();
      check(field.isPinvokeImpl).isFalse();
      check(field.isRTSpecialName).isFalse();
      check(field.isSpecialName).isFalse();
      check(field.isStatic).isTrue();
      check(field.parent).equals(typeDef);
      check(field.value).isA<String>();
      check(field.value).equals(r'Software\Microsoft\Cryptography\OID');
    });

    test('D3D11_MIP_LOD_BIAS_MIN', () {
      final typeDef =
          win32Scope.findTypeDef('Windows.Win32.Graphics.Direct3D11.Apis');
      check(typeDef).isNotNull();
      final field = typeDef!.findField('D3D11_MIP_LOD_BIAS_MIN');
      check(field).isNotNull();
      check(field!.fieldType).equals(BaseType.floatType);
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.hasDefault).isTrue();
      check(field.hasFieldMarshal).isFalse();
      check(field.hasFieldRVA).isFalse();
      check(field.isInitOnly).isFalse();
      check(field.isLiteral).isTrue();
      check(field.isNotSerialized).isFalse();
      check(field.isPinvokeImpl).isFalse();
      check(field.isRTSpecialName).isFalse();
      check(field.isSpecialName).isFalse();
      check(field.isStatic).isTrue();
      check(field.parent).equals(typeDef);
      check(field.value).isA<double>();
      check(field.value).equals(-16.0);
    });

    test('DSFXCHORUS_FEEDBACK_MIN', () {
      final typeDef =
          win32Scope.findTypeDef('Windows.Win32.Media.Audio.DirectSound.Apis');
      check(typeDef).isNotNull();
      final field = typeDef!.findField('DSFXCHORUS_FEEDBACK_MIN');
      check(field).isNotNull();
      check(field!.fieldType).equals(BaseType.floatType);
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.hasDefault).isTrue();
      check(field.hasFieldMarshal).isFalse();
      check(field.hasFieldRVA).isFalse();
      check(field.isInitOnly).isFalse();
      check(field.isLiteral).isTrue();
      check(field.isNotSerialized).isFalse();
      check(field.isPinvokeImpl).isFalse();
      check(field.isRTSpecialName).isFalse();
      check(field.isSpecialName).isFalse();
      check(field.isStatic).isTrue();
      check(field.parent).equals(typeDef);
      check(field.value).isA<double>();
      check(field.value).equals(-99.0);
    });

    test('FXEQ_MAX_GAIN', () {
      final typeDef =
          win32Scope.findTypeDef('Windows.Win32.Media.Audio.XAudio2.Apis');
      check(typeDef).isNotNull();
      final field = typeDef!.findField('FXEQ_MAX_GAIN');
      check(field).isNotNull();
      check(field!.fieldType).equals(BaseType.floatType);
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.hasDefault).isTrue();
      check(field.hasFieldMarshal).isFalse();
      check(field.hasFieldRVA).isFalse();
      check(field.isInitOnly).isFalse();
      check(field.isLiteral).isTrue();
      check(field.isNotSerialized).isFalse();
      check(field.isPinvokeImpl).isFalse();
      check(field.isRTSpecialName).isFalse();
      check(field.isSpecialName).isFalse();
      check(field.isStatic).isTrue();
      check(field.parent).equals(typeDef);
      check(field.value).isA<double>();
      check(field.value).equals(7.940000057220459);
    });

    test('IMAGE_ARCHIVE_END', () {
      final typeDef =
          win32Scope.findTypeDef('Windows.Win32.System.SystemServices.Apis');
      check(typeDef).isNotNull();
      final field = typeDef!.findField('IMAGE_ARCHIVE_END');
      check(field).isNotNull();
      check(field!.fieldType).equals(BaseType.stringType);
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.hasDefault).isTrue();
      check(field.hasFieldMarshal).isFalse();
      check(field.hasFieldRVA).isFalse();
      check(field.isInitOnly).isFalse();
      check(field.isLiteral).isTrue();
      check(field.isNotSerialized).isFalse();
      check(field.isPinvokeImpl).isFalse();
      check(field.isRTSpecialName).isFalse();
      check(field.isSpecialName).isFalse();
      check(field.isStatic).isTrue();
      check(field.parent).equals(typeDef);
      check(field.value).isA<String>();
      check(field.value).equals('`\n');
    });

    test('MIXERCONTROL_CONTROLTYPE_DECIBELS', () {
      final typeDef = win32Scope.findTypeDef('Windows.Win32.Media.Audio.Apis');
      check(typeDef).isNotNull();
      final field = typeDef!.findField('MIXERCONTROL_CONTROLTYPE_DECIBELS');
      check(field).isNotNull();
      check(field!.fieldType).equals(BaseType.uint32Type);
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.hasDefault).isTrue();
      check(field.hasFieldMarshal).isFalse();
      check(field.hasFieldRVA).isFalse();
      check(field.isInitOnly).isFalse();
      check(field.isLiteral).isTrue();
      check(field.isNotSerialized).isFalse();
      check(field.isPinvokeImpl).isFalse();
      check(field.isRTSpecialName).isFalse();
      check(field.isSpecialName).isFalse();
      check(field.isStatic).isTrue();
      check(field.parent).equals(typeDef);
      check(field.value).isA<int>();
      check(field.value).equals(805568512);
    });

    test('NAME_PNGImage', () {
      final typeDef =
          win32Scope.findTypeDef('Windows.Win32.Devices.PortableDevices.Apis');
      check(typeDef).isNotNull();
      final field = typeDef!.findField('NAME_PNGImage');
      check(field).isNotNull();
      check(field!.fieldType).equals(BaseType.stringType);
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.hasDefault).isTrue();
      check(field.hasFieldMarshal).isFalse();
      check(field.hasFieldRVA).isFalse();
      check(field.isInitOnly).isFalse();
      check(field.isLiteral).isTrue();
      check(field.isNotSerialized).isFalse();
      check(field.isPinvokeImpl).isFalse();
      check(field.isRTSpecialName).isFalse();
      check(field.isSpecialName).isFalse();
      check(field.isStatic).isTrue();
      check(field.parent).equals(typeDef);
      check(field.value).isA<String>();
      check(field.value).equals('PNGImage');
    });

    test('SCARD_ALL_READERS', () {
      final typeDef =
          win32Scope.findTypeDef('Windows.Win32.Security.Credentials.Apis');
      check(typeDef).isNotNull();
      final field = typeDef!.findField('SCARD_ALL_READERS');
      check(field).isNotNull();
      check(field!.fieldType).equals(BaseType.stringType);
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.hasDefault).isTrue();
      check(field.hasFieldMarshal).isFalse();
      check(field.hasFieldRVA).isFalse();
      check(field.isInitOnly).isFalse();
      check(field.isLiteral).isTrue();
      check(field.isNotSerialized).isFalse();
      check(field.isPinvokeImpl).isFalse();
      check(field.isRTSpecialName).isFalse();
      check(field.isSpecialName).isFalse();
      check(field.isStatic).isTrue();
      check(field.parent).equals(typeDef);
      check(field.value).isA<String>();
      check(field.value).equals('SCard\$AllReaders\x0000');
    });

    test('STATUS_ACCESS_DENIED', () {
      final typeDef = win32Scope.findTypeDef('Windows.Win32.Foundation.Apis');
      check(typeDef).isNotNull();
      final field = typeDef!.findField('STATUS_ACCESS_DENIED');
      check(field).isNotNull();
      check(field!.fieldType).equals(BaseType.int32Type);
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.hasDefault).isTrue();
      check(field.hasFieldMarshal).isFalse();
      check(field.hasFieldRVA).isFalse();
      check(field.isInitOnly).isFalse();
      check(field.isLiteral).isTrue();
      check(field.isNotSerialized).isFalse();
      check(field.isPinvokeImpl).isFalse();
      check(field.isRTSpecialName).isFalse();
      check(field.isSpecialName).isFalse();
      check(field.isStatic).isTrue();
      check(field.parent).equals(typeDef);
      check(field.value).isA<int>();
      check(field.value).equals(-1073741790);
    });

    test('U8_LEAD3_T1_BITS', () {
      final typeDef =
          win32Scope.findTypeDef('Windows.Win32.Globalization.Apis');
      check(typeDef).isNotNull();
      final field = typeDef!.findField('U8_LEAD3_T1_BITS');
      check(field).isNotNull();
      check(field!.fieldType).equals(BaseType.stringType);
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.hasDefault).isTrue();
      check(field.hasFieldMarshal).isFalse();
      check(field.hasFieldRVA).isFalse();
      check(field.isInitOnly).isFalse();
      check(field.isLiteral).isTrue();
      check(field.isNotSerialized).isFalse();
      check(field.isPinvokeImpl).isFalse();
      check(field.isRTSpecialName).isFalse();
      check(field.isSpecialName).isFalse();
      check(field.isStatic).isTrue();
      check(field.parent).equals(typeDef);
      check(field.value).isA<String>();
      check(field.value).equals(' 000000000000\x1000');
    });

    test('U8_LEAD4_T1_BITS', () {
      final typeDef =
          win32Scope.findTypeDef('Windows.Win32.Globalization.Apis');
      check(typeDef).isNotNull();
      final field = typeDef!.findField('U8_LEAD4_T1_BITS');
      check(field).isNotNull();
      check(field!.fieldType).equals(BaseType.stringType);
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.hasDefault).isTrue();
      check(field.hasFieldMarshal).isFalse();
      check(field.hasFieldRVA).isFalse();
      check(field.isInitOnly).isFalse();
      check(field.isLiteral).isTrue();
      check(field.isNotSerialized).isFalse();
      check(field.isPinvokeImpl).isFalse();
      check(field.isRTSpecialName).isFalse();
      check(field.isSpecialName).isFalse();
      check(field.isStatic).isTrue();
      check(field.parent).equals(typeDef);
      check(field.value).isA<String>();
      check(field.value).equals(
          '\x00\x00\x00\x00\x00\x00\x00\x00\x1e\x0f\x0f\x0f\x00\x00\x00\x00');
    });

    test('wszGRAVE', () {
      final typeDef = win32Scope
          .findTypeDef('Windows.Win32.UI.Input.KeyboardAndMouse.Apis');
      check(typeDef).isNotNull();
      final field = typeDef!.findField('wszGRAVE');
      check(field).isNotNull();
      check(field!.fieldType).equals(BaseType.stringType);
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.hasDefault).isTrue();
      check(field.hasFieldMarshal).isFalse();
      check(field.hasFieldRVA).isFalse();
      check(field.isInitOnly).isFalse();
      check(field.isLiteral).isTrue();
      check(field.isNotSerialized).isFalse();
      check(field.isPinvokeImpl).isFalse();
      check(field.isRTSpecialName).isFalse();
      check(field.isSpecialName).isFalse();
      check(field.isStatic).isTrue();
      check(field.parent).equals(typeDef);
      check(field.value).isA<String>();
      check(field.value).equals('\u0300');
    });

    test('wszzDEFAULTSIGNEDATTRIBUTES', () {
      final typeDef = win32Scope
          .findTypeDef('Windows.Win32.Security.Cryptography.Certificates.Apis');
      check(typeDef).isNotNull();
      final field = typeDef!.findField('wszzDEFAULTSIGNEDATTRIBUTES');
      check(field).isNotNull();
      check(field!.fieldType).equals(BaseType.stringType);
      check(field.fieldAccess).equals(FieldAccess.public);
      check(field.hasDefault).isTrue();
      check(field.hasFieldMarshal).isFalse();
      check(field.hasFieldRVA).isFalse();
      check(field.isInitOnly).isFalse();
      check(field.isLiteral).isTrue();
      check(field.isNotSerialized).isFalse();
      check(field.isPinvokeImpl).isFalse();
      check(field.isRTSpecialName).isFalse();
      check(field.isSpecialName).isFalse();
      check(field.isStatic).isTrue();
      check(field.parent).equals(typeDef);
      check(field.value).isA<String>();
      check(field.value).equals('RequesterName\x00');
    });
  });

  test('Test WinRT field properties', () {
    final typeDef = winrtScope.findTypeDef('Windows.Foundation.Rect');
    check(typeDef).isNotNull();
    // _Anonymous_e__Struct
    final field = typeDef!.fields.last;
    check(field.fieldType).equals(BaseType.voidType);
    check(field.fieldAccess).equals(FieldAccess.public);
    check(field.hasDefault).isFalse();
    check(field.hasFieldMarshal).isFalse();
    check(field.hasFieldRVA).isFalse();
    check(field.isInitOnly).isFalse();
    check(field.isLiteral).isFalse();
    check(field.isNotSerialized).isFalse();
    check(field.isPinvokeImpl).isFalse();
    check(field.isRTSpecialName).isFalse();
    check(field.isSpecialName).isFalse();
    check(field.isStatic).isFalse();
    check(field.parent).equals(typeDef);
    check(field.toString()).equals('Height');
  });

  tearDownAll(MetadataStore.close);
}

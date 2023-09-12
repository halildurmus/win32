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

  test('Test Win32 field properties', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.Media.Audio.Apis');
    check(typeDef).isNotNull();
    final field = typeDef!.findField('MIXERCONTROL_CONTROLTYPE_DECIBELS');
    check(field).isNotNull();
    check(field!.fieldAccess).equals(FieldAccess.public);
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
    check(field.value).equals(805568512);
  });

  test('Test WinRT field properties', () {
    final typeDef = winrtScope.findTypeDef('Windows.Foundation.Rect');
    check(typeDef).isNotNull();
    // _Anonymous_e__Struct
    final field = typeDef!.fields.last;
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

// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

// Exhaustively test a Win32 class (struct) representation

void main() {
  late Scope scope;

  setUpAll(() async {
    scope = await MetadataStore.loadWin32Metadata();
  });

  // .class public sequential ansi sealed beforefieldinit Windows.Win32.UI.WindowsAndMessaging.ACCEL
  // 	extends [netstandard]System.ValueType
  // {
  // 	// Fields
  // 	.field public uint8 fVirt
  // 	.field public uint16 key
  // 	.field public uint16 cmd
  //
  // } // end of class Windows.Win32.UI.WindowsAndMessaging.ACCEL

  test('Windows.Win32.UI.WindowsAndMessaging.ACCEL', () {
    final typeDef =
        scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.ACCEL')!;
    check(typeDef.isBeforeFieldInit).isTrue();
    check(typeDef.isSealed).isTrue();
    check(typeDef.isStruct).isTrue();
    check(typeDef.name).equals('Windows.Win32.UI.WindowsAndMessaging.ACCEL');
    check(typeDef.parent?.name).equals('System.ValueType');
    check(typeDef.representsAsClass).isTrue();
    check(typeDef.stringFormat).equals(StringFormat.ansi);
    check(typeDef.typeLayout).equals(TypeLayout.sequential);
    check(typeDef.typeVisibility).equals(TypeVisibility.public);

    check(typeDef.fields.length).equals(3);
    final [firstField, secondField, thirdField] = typeDef.fields;

    check(firstField.fieldAccess).equals(FieldAccess.public);
    check(firstField.name).equals('fVirt');
    check(firstField.typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(firstField.typeIdentifier.type?.name)
        .equals('Windows.Win32.UI.WindowsAndMessaging.ACCEL_VIRT_FLAGS');

    check(secondField.fieldAccess).equals(FieldAccess.public);
    check(secondField.name).equals('key');
    check(secondField.typeIdentifier.baseType).equals(BaseType.uint16Type);

    check(thirdField.fieldAccess).equals(FieldAccess.public);
    check(thirdField.name).equals('cmd');
    check(thirdField.typeIdentifier.baseType).equals(BaseType.uint16Type);
  });

  tearDownAll(MetadataStore.close);
}

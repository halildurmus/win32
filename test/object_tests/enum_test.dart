// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

// Exhaustively test a Win32 enum representation

void main() {
  late Scope scope;

  setUpAll(() async {
    scope = await MetadataStore.loadWin32Metadata();
  });

  // .class public auto ansi sealed Windows.Win32.UI.WindowsAndMessaging.HANDEDNESS
  //   extends [netstandard]System.Enum
  // {
  //   // Fields
  //   .field public specialname rtspecialname int32 value__
  //   .field public static literal valuetype [Windows.Win32.winmd]Windows.Win32.UI.WindowsAndMessaging.HANDEDNESS HANDEDNESS_LEFT = int32(0)
  //   .field public static literal valuetype [Windows.Win32.winmd]Windows.Win32.UI.WindowsAndMessaging.HANDEDNESS HANDEDNESS_RIGHT = int32(1)

  // } // end of class Windows.Win32.UI.WindowsAndMessaging.HANDEDNESS

  test('Windows.Win32.UI.WindowsAndMessaging.HANDEDNESS enum', () {
    final typeDef =
        scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.HANDEDNESS')!;
    check(typeDef.isEnum).isTrue();
    check(typeDef.isSealed).isTrue();
    check(typeDef.name)
        .equals('Windows.Win32.UI.WindowsAndMessaging.HANDEDNESS');
    check(typeDef.parent?.name).equals('System.Enum');
    check(typeDef.stringFormat).equals(StringFormat.ansi);
    check(typeDef.typeLayout).equals(TypeLayout.auto);
    check(typeDef.typeVisibility).equals(TypeVisibility.public);

    check(typeDef.fields.length).equals(3);
    final [firstField, secondField, thirdField] = typeDef.fields;

    check(firstField.fieldAccess).equals(FieldAccess.public);
    check(firstField.isRTSpecialName).isTrue();
    check(firstField.isSpecialName).isTrue();
    check(firstField.name).equals('value__');
    check(firstField.typeIdentifier.baseType).equals(BaseType.int32Type);

    check(secondField.fieldAccess).equals(FieldAccess.public);
    check(secondField.fieldType).equals(BaseType.int32Type);
    check(secondField.isStatic).isTrue();
    check(secondField.isLiteral).isTrue();
    check(secondField.name).equals('HANDEDNESS_LEFT');
    check(secondField.typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(secondField.typeIdentifier.name)
        .equals('Windows.Win32.UI.WindowsAndMessaging.HANDEDNESS');
    check(secondField.value).equals(0);

    check(thirdField.fieldAccess).equals(FieldAccess.public);
    check(thirdField.fieldType).equals(BaseType.int32Type);
    check(thirdField.isLiteral).isTrue();
    check(thirdField.isStatic).isTrue();
    check(thirdField.name).equals('HANDEDNESS_RIGHT');
    check(thirdField.typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(thirdField.typeIdentifier.name)
        .equals('Windows.Win32.UI.WindowsAndMessaging.HANDEDNESS');
    check(thirdField.value).equals(1);
  });

  tearDownAll(MetadataStore.close);
}

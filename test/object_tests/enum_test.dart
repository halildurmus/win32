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
    final [value, left, right] = typeDef.fields;

    check(value.fieldAccess).equals(FieldAccess.public);
    check(value.isRTSpecialName).isTrue();
    check(value.isSpecialName).isTrue();
    check(value.name).equals('value__');
    check(value.typeIdentifier.baseType).equals(BaseType.int32Type);
    check(value.value).isNull();

    check(left.fieldAccess).equals(FieldAccess.public);
    check(left.fieldType).equals(BaseType.int32Type);
    check(left.isStatic).isTrue();
    check(left.isLiteral).isTrue();
    check(left.name).equals('HANDEDNESS_LEFT');
    check(left.typeIdentifier.baseType).equals(BaseType.valueTypeModifier);
    check(left.typeIdentifier.name)
        .equals('Windows.Win32.UI.WindowsAndMessaging.HANDEDNESS');
    check(left.value).isA<int>();
    check(left.value).equals(0);

    check(right.fieldAccess).equals(FieldAccess.public);
    check(right.fieldType).equals(BaseType.int32Type);
    check(right.isLiteral).isTrue();
    check(right.isStatic).isTrue();
    check(right.name).equals('HANDEDNESS_RIGHT');
    check(right.typeIdentifier.baseType).equals(BaseType.valueTypeModifier);
    check(right.typeIdentifier.name)
        .equals('Windows.Win32.UI.WindowsAndMessaging.HANDEDNESS');
    check(right.value).isA<int>();
    check(right.value).equals(1);
  });

  tearDownAll(MetadataStore.close);
}

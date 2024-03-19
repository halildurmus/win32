// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

// Exhaustively test a WinRT enum representation

void main() {
  late Scope scope;

  setUpAll(() async {
    scope = await MetadataStore.loadWinRTMetadata();
  });

  // .class public auto ansi sealed import windowsruntime Windows.Storage.Pickers.PickerViewMode
  // 	extends [mscorlib]System.Enum
  // {
  // 	.custom instance void [Windows.Foundation]Windows.Foundation.Metadata.ContractVersionAttribute::.ctor(class [mscorlib]System.Type, uint32) = (
  // 		01 00 27 57 69 6e 64 6f 77 73 2e 46 6f 75 6e 64
  // 		61 74 69 6f 6e 2e 55 6e 69 76 65 72 73 61 6c 41
  // 		70 69 43 6f 6e 74 72 61 63 74 00 00 01 00 00 00
  // 	)
  // 	// Fields
  // 	.field public specialname rtspecialname int32 value__
  // 	.field public static literal valuetype [Windows.Storage.winmd]Windows.Storage.Pickers.PickerViewMode List = int32(0)
  // 	.field public static literal valuetype [Windows.Storage.winmd]Windows.Storage.Pickers.PickerViewMode Thumbnail = int32(1)

  // } // end of class Windows.Storage.Pickers.PickerViewMode

  test('Windows.Storage.Pickers.PickerViewMode enum', () {
    final typeDef =
        scope.findTypeDef('Windows.Storage.Pickers.PickerViewMode')!;
    check(typeDef.isEnum).isTrue();
    check(typeDef.isSealed).isTrue();
    check(typeDef.isWindowsRuntime).isTrue();
    check(typeDef.name).equals('Windows.Storage.Pickers.PickerViewMode');
    check(typeDef.parent?.name).equals('System.Enum');
    check(typeDef.stringFormat).equals(StringFormat.ansi);
    check(typeDef.typeLayout).equals(TypeLayout.auto);
    check(typeDef.typeVisibility).equals(TypeVisibility.public);

    check(typeDef.fields.length).equals(3);
    final [value, list, thumbnail] = typeDef.fields;

    check(value.fieldAccess).equals(FieldAccess.private);
    check(value.isRTSpecialName).isTrue();
    check(value.isSpecialName).isTrue();
    check(value.name).equals('value__');
    check(value.typeIdentifier.baseType).equals(BaseType.int32Type);
    check(value.value).isNull();

    check(list.fieldAccess).equals(FieldAccess.public);
    check(list.fieldType).equals(BaseType.int32Type);
    check(list.isLiteral).isTrue();
    check(list.isStatic).isTrue();
    check(list.name).equals('List');
    check(list.typeIdentifier.baseType).equals(BaseType.valueTypeModifier);
    check(list.typeIdentifier.name)
        .equals('Windows.Storage.Pickers.PickerViewMode');
    check(list.value).isA<int>();
    check(list.value).equals(0);

    check(thumbnail.fieldAccess).equals(FieldAccess.public);
    check(thumbnail.fieldType).equals(BaseType.int32Type);
    check(thumbnail.isLiteral).isTrue();
    check(thumbnail.isStatic).isTrue();
    check(thumbnail.name).equals('Thumbnail');
    check(thumbnail.typeIdentifier.baseType).equals(BaseType.valueTypeModifier);
    check(thumbnail.typeIdentifier.name)
        .equals('Windows.Storage.Pickers.PickerViewMode');
    check(list.value).isA<int>();
    check(thumbnail.value).equals(1);
  });

  tearDownAll(MetadataStore.close);
}

@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

/// Exhaustively test a WinRT enum representation.
void main() {
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
    final pvm = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.PickerViewMode')!;

    expect(pvm.typeVisibility, equals(TypeVisibility.public));
    expect(pvm.typeLayout, equals(TypeLayout.auto));
    expect(pvm.stringFormat, equals(StringFormat.ansi));
    expect(pvm.isSealed, isTrue);
    // expect(pvm.isImported, isTrue);
    expect(pvm.isWindowsRuntime, isTrue);
    expect(pvm.name, equals('Windows.Storage.Pickers.PickerViewMode'));
    expect(pvm.parent?.name, equals('System.Enum'));
    expect(pvm.isEnum, isTrue);

    expect(pvm.fields.length, equals(3));
    expect(pvm.fields[0].fieldAccess, equals(FieldAccess.private));
    expect(pvm.fields[0].isSpecialName, isTrue);
    expect(pvm.fields[0].isRTSpecialName, isTrue);
    expect(pvm.fields[0].typeIdentifier.baseType, equals(BaseType.int32Type));
    expect(pvm.fields[0].name, equals('value__'));

    expect(pvm.fields[1].fieldAccess, equals(FieldAccess.public));
    expect(pvm.fields[1].isStatic, isTrue);
    expect(pvm.fields[1].isLiteral, isTrue);
    expect(pvm.fields[1].typeIdentifier.baseType,
        equals(BaseType.valueTypeModifier));
    expect(pvm.fields[1].typeIdentifier.name,
        equals('Windows.Storage.Pickers.PickerViewMode'));
    expect(pvm.fields[1].name, equals('List'));
    expect(pvm.fields[1].fieldType, equals(BaseType.int32Type));
    expect(pvm.fields[1].value, equals(0));

    expect(pvm.fields[2].fieldAccess, equals(FieldAccess.public));
    expect(pvm.fields[2].isStatic, isTrue);
    expect(pvm.fields[2].isLiteral, isTrue);
    expect(pvm.fields[2].typeIdentifier.baseType,
        equals(BaseType.valueTypeModifier));
    expect(pvm.fields[2].typeIdentifier.name,
        equals('Windows.Storage.Pickers.PickerViewMode'));
    expect(pvm.fields[2].name, equals('Thumbnail'));
    expect(pvm.fields[2].fieldType, equals(BaseType.int32Type));
    expect(pvm.fields[2].value, equals(1));
  });
}

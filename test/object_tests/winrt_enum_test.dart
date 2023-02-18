@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
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

    check(pvm.typeVisibility).equals(TypeVisibility.public);
    check(pvm.typeLayout).equals(TypeLayout.auto);
    check(pvm.stringFormat).equals(StringFormat.ansi);
    check(pvm.isSealed).isTrue();
    // check(pvm.isImported).isTrue();
    check(pvm.isWindowsRuntime).isTrue();
    check(pvm.name).equals('Windows.Storage.Pickers.PickerViewMode');
    check(pvm.parent?.name).equals('System.Enum');
    check(pvm.isEnum).isTrue();

    check(pvm.fields.length).equals(3);
    check(pvm.fields[0].fieldAccess).equals(FieldAccess.private);
    check(pvm.fields[0].isSpecialName).isTrue();
    check(pvm.fields[0].isRTSpecialName).isTrue();
    check(pvm.fields[0].typeIdentifier.baseType).equals(BaseType.int32Type);
    check(pvm.fields[0].name).equals('value__');

    check(pvm.fields[1].fieldAccess).equals(FieldAccess.public);
    check(pvm.fields[1].isStatic).isTrue();
    check(pvm.fields[1].isLiteral).isTrue();
    check(pvm.fields[1].typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(pvm.fields[1].typeIdentifier.name)
        .equals('Windows.Storage.Pickers.PickerViewMode');
    check(pvm.fields[1].name).equals('List');
    check(pvm.fields[1].fieldType).equals(BaseType.int32Type);
    check(pvm.fields[1].value).equals(0);

    check(pvm.fields[2].fieldAccess).equals(FieldAccess.public);
    check(pvm.fields[2].isStatic).isTrue();
    check(pvm.fields[2].isLiteral).isTrue();
    check(pvm.fields[2].typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(pvm.fields[2].typeIdentifier.name)
        .equals('Windows.Storage.Pickers.PickerViewMode');
    check(pvm.fields[2].name).equals('Thumbnail');
    check(pvm.fields[2].fieldType).equals(BaseType.int32Type);
    check(pvm.fields[2].value).equals(1);
  });
}

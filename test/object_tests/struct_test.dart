@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

/// Exhaustively test a Win32 class (struct) representation.
void main() {
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
    final scope = MetadataStore.getWin32Scope();
    final accel =
        scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.ACCEL')!;

    check(accel.representsAsClass).isTrue();
    check(accel.isStruct).isTrue();
    check(accel.typeVisibility).equals(TypeVisibility.public);
    check(accel.typeLayout).equals(TypeLayout.sequential);
    check(accel.stringFormat).equals(StringFormat.ansi);
    check(accel.isSealed).isTrue();
    check(accel.isBeforeFieldInit).isTrue();

    check(accel.name).equals('Windows.Win32.UI.WindowsAndMessaging.ACCEL');
    check(accel.parent?.name).equals('System.ValueType');

    check(accel.fields.length).equals(3);
    check(accel.fields[0].name).equals('fVirt');
    check(accel.fields[0].typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(accel.fields[0].typeIdentifier.type?.name)
        .equals('Windows.Win32.UI.WindowsAndMessaging.ACCEL_VIRT_FLAGS');
    check(accel.fields[0].fieldAccess).equals(FieldAccess.public);

    check(accel.fields[1].name).equals('key');
    check(accel.fields[1].typeIdentifier.baseType).equals(BaseType.uint16Type);
    check(accel.fields[1].fieldAccess).equals(FieldAccess.public);

    check(accel.fields[2].name).equals('cmd');
    check(accel.fields[2].typeIdentifier.baseType).equals(BaseType.uint16Type);
    check(accel.fields[2].fieldAccess).equals(FieldAccess.public);
  });
}

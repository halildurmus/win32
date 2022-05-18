@TestOn('windows')

import 'package:test/test.dart';
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

    expect(accel.isClass, isTrue);
    expect(accel.typeVisibility, equals(TypeVisibility.public));
    expect(accel.typeLayout, equals(TypeLayout.sequential));
    expect(accel.stringFormat, equals(StringFormat.ansi));
    expect(accel.isSealed, isTrue);
    expect(accel.isBeforeFieldInit, isTrue);

    expect(accel.name, equals('Windows.Win32.UI.WindowsAndMessaging.ACCEL'));
    expect(accel.parent?.name, equals('System.ValueType'));

    expect(accel.fields.length, equals(3));
    expect(accel.fields[0].name, equals('fVirt'));
    expect(accel.fields[0].typeIdentifier.baseType, equals(BaseType.uint8Type));
    expect(accel.fields[0].fieldAccess, equals(FieldAccess.public));

    expect(accel.fields[1].name, equals('key'));
    expect(
        accel.fields[1].typeIdentifier.baseType, equals(BaseType.uint16Type));
    expect(accel.fields[1].fieldAccess, equals(FieldAccess.public));

    expect(accel.fields[2].name, equals('cmd'));
    expect(
        accel.fields[2].typeIdentifier.baseType, equals(BaseType.uint16Type));
    expect(accel.fields[2].fieldAccess, equals(FieldAccess.public));
  });
}

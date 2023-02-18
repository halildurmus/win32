@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

/// Exhaustively test a Win32 enum representation.
void main() {
  // .class public auto ansi sealed Windows.Win32.UI.WindowsAndMessaging.HANDEDNESS
  //   extends [netstandard]System.Enum
  // {
  //   // Fields
  //   .field public specialname rtspecialname int32 value__
  //   .field public static literal valuetype [Windows.Win32.winmd]Windows.Win32.UI.WindowsAndMessaging.HANDEDNESS HANDEDNESS_LEFT = int32(0)
  //   .field public static literal valuetype [Windows.Win32.winmd]Windows.Win32.UI.WindowsAndMessaging.HANDEDNESS HANDEDNESS_RIGHT = int32(1)

  // } // end of class Windows.Win32.UI.WindowsAndMessaging.HANDEDNESS
  test('Windows.Win32.UI.WindowsAndMessaging.HANDEDNESS enum', () {
    final scope = MetadataStore.getWin32Scope();
    final hand =
        scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.HANDEDNESS')!;

    check(hand.typeVisibility).equals(TypeVisibility.public);
    check(hand.typeLayout).equals(TypeLayout.auto);
    check(hand.stringFormat).equals(StringFormat.ansi);
    check(hand.isSealed).isTrue();
    check(hand.name).equals('Windows.Win32.UI.WindowsAndMessaging.HANDEDNESS');
    check(hand.parent?.name).equals('System.Enum');
    check(hand.isEnum).isTrue();

    check(hand.fields.length).equals(3);

    check(hand.fields[0].fieldAccess).equals(FieldAccess.public);
    check(hand.fields[0].isSpecialName).isTrue();
    check(hand.fields[0].isRTSpecialName).isTrue();
    check(hand.fields[0].typeIdentifier.baseType).equals(BaseType.int32Type);
    check(hand.fields[0].name).equals('value__');

    check(hand.fields[1].fieldAccess).equals(FieldAccess.public);
    check(hand.fields[1].isStatic).isTrue();
    check(hand.fields[1].isLiteral).isTrue();
    check(hand.fields[1].typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(hand.fields[1].typeIdentifier.name)
        .equals('Windows.Win32.UI.WindowsAndMessaging.HANDEDNESS');
    check(hand.fields[1].name).equals('HANDEDNESS_LEFT');
    check(hand.fields[1].fieldType).equals(BaseType.int32Type);
    check(hand.fields[1].value).equals(0);

    check(hand.fields[2].fieldAccess).equals(FieldAccess.public);
    check(hand.fields[2].isStatic).isTrue();
    check(hand.fields[2].isLiteral).isTrue();
    check(hand.fields[2].typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(hand.fields[2].typeIdentifier.name)
        .equals('Windows.Win32.UI.WindowsAndMessaging.HANDEDNESS');
    check(hand.fields[2].name).equals('HANDEDNESS_RIGHT');
    check(hand.fields[2].fieldType).equals(BaseType.int32Type);
    check(hand.fields[2].value).equals(1);
  });
}

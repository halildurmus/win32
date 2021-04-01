@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  // .class public sequential ansi sealed beforefieldinit Windows.Win32.WindowsAndMessaging.ACCEL
  // 	extends [netstandard]System.ValueType
  // {
  // 	// Fields
  // 	.field public uint8 fVirt
  // 	.field public uint16 key
  // 	.field public uint16 cmd
  //
  // } // end of class Windows.Win32.WindowsAndMessaging.ACCEL
  test('Windows.Win32.WindowsAndMessaging.ACCEL', () {
    final scope = MetadataStore.getWin32Scope();
    final accel = scope['Windows.Win32.WindowsAndMessaging.ACCEL']!;

    expect(accel.hasAttribute(CorTypeAttr.tdClass), isTrue);
    expect(accel.hasAttribute(CorTypeAttr.tdPublic), isTrue);
    expect(accel.hasAttribute(CorTypeAttr.tdSequentialLayout), isTrue);
    expect(accel.hasAttribute(CorTypeAttr.tdAnsiClass), isTrue);
    expect(accel.hasAttribute(CorTypeAttr.tdSealed), isTrue);
    expect(accel.hasAttribute(CorTypeAttr.tdBeforeFieldInit), isTrue);

    expect(accel.typeName, equals('Windows.Win32.WindowsAndMessaging.ACCEL'));
    expect(accel.parent?.typeName, equals('System.ValueType'));

    expect(accel.fields.length, equals(3));
    expect(accel.fields[0].name, equals('fVirt'));
    expect(accel.fields[0].typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_U1));
    expect(accel.fields[0].hasAttribute(CorFieldAttr.fdPublic), isTrue);

    expect(accel.fields[1].name, equals('key'));
    expect(accel.fields[1].typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_U2));
    expect(accel.fields[1].hasAttribute(CorFieldAttr.fdPublic), isTrue);

    expect(accel.fields[2].name, equals('cmd'));
    expect(accel.fields[2].typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_U2));
    expect(accel.fields[2].hasAttribute(CorFieldAttr.fdPublic), isTrue);
  });
}

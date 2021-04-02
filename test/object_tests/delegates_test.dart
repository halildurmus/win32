@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

/// Exhaustively test a delegate object
void main() {
  // .class public auto auto sealed beforefieldinit Windows.Win32.WindowsAndMessaging.WNDPROC
  // 	extends [netstandard]System.MulticastDelegate
  // {
  // 	.custom instance void [netstandard]System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute::.ctor(valuetype [netstandard]System.Runtime.InteropServices.CallingConvention) = (
  // 		01 00 01 00 00 00 00 00
  // 	)
  // 	// Methods
  // 	.method public hidebysig specialname rtspecialname
  // 		instance void .ctor (
  // 			object 'object',
  // 			native int 'method'
  // 		) runtime managed
  // 	{
  // 	} // end of method WNDPROC::.ctor

  // 	.method public hidebysig newslot virtual
  // 		instance valuetype Windows.Win32.SystemServices.LRESULT Invoke (
  // 			[in] valuetype Windows.Win32.WindowsAndMessaging.HWND param0,
  // 			[in] uint32 param1,
  // 			[in] valuetype Windows.Win32.WindowsAndMessaging.WPARAM param2,
  // 			[in] valuetype Windows.Win32.WindowsAndMessaging.LPARAM param3
  // 		) runtime managed
  // 	{
  // 	} // end of method WNDPROC::Invoke

  // } // end of class Windows.Win32.WindowsAndMessaging.WNDPROC
  test('Windows.Win32.WindowsAndMessaging.WNDPROC', () {
    final scope = MetadataStore.getWin32Scope();
    final wndProc = scope['Windows.Win32.WindowsAndMessaging.WNDPROC']!;

    expect(wndProc.isClass, isTrue);
    expect(wndProc.typeVisibility, equals(TypeVisibility.Public));
    expect(wndProc.typeLayout, equals(TypeLayout.Auto));
    expect(wndProc.stringFormat, equals(StringFormat.Auto));
    expect(wndProc.isSealed, isTrue);
    expect(wndProc.isBeforeFieldInit, isTrue);
    expect(
        wndProc.typeName, equals('Windows.Win32.WindowsAndMessaging.WNDPROC'));
    expect(wndProc.parent?.typeName, equals('System.MulticastDelegate'));

    expect(wndProc.customAttributes.length, equals(1));
    // TODO: Need more here
    // expect(
    //     wndProc.customAttributes.first.name,
    //     equals(
    //         'System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute'));
    // expect(wndProc.customAttributes[0].hasAttribute(CorAttributeAttr.aaInstance), isTrue);
    expect(
        wndProc.customAttributeAsBytes(
            'System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute'),
        equals([
          0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, //
        ]));

    expect(wndProc.methods.length, equals(2));
    expect(wndProc.methods[0].memberAccess, equals(MemberAccess.Public));
    expect(wndProc.methods[0].isHideBySig, isTrue);
    expect(wndProc.methods[0].isSpecialName, isTrue);
    // expect(
    //     wndProc.methods[0].hasAttribute(CorMethodAttr.mdRTSpecialName), isTrue);

    expect(wndProc.methods[0].returnType.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_VOID));
    expect(wndProc.methods[0].methodName, equals('.ctor'));
    expect(wndProc.methods[0].parameters.length, equals(2));

    expect(wndProc.methods[0].parameters[0].name, equals('object'));
    expect(wndProc.methods[0].parameters[0].typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_OBJECT));

    expect(wndProc.methods[0].parameters[1].name, equals('method'));
    expect(wndProc.methods[0].parameters[1].typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_I));
    expect(wndProc.methods[0].implFeatures.codeType, equals(CodeType.Runtime));
    expect(wndProc.methods[0].implFeatures.isManaged, isTrue);

    expect(wndProc.methods[1].memberAccess, equals(MemberAccess.Public));
    expect(wndProc.methods[1].isHideBySig, isTrue);
    expect(wndProc.methods[1].vTableLayout, equals(VtableLayout.NewSlot));
    expect(wndProc.methods[1].isVirtual, isTrue);

    expect(wndProc.methods[1].returnType.typeIdentifier.name,
        equals('Windows.Win32.SystemServices.LRESULT'));
    expect(wndProc.methods[1].methodName, equals('Invoke'));
    expect(wndProc.methods[1].parameters.length, equals(4));

    expect(wndProc.methods[1].parameters[0].hasAttribute(CorParamAttr.pdIn),
        isTrue);
    expect(wndProc.methods[1].parameters[0].name, equals('param0'));
    expect(wndProc.methods[1].parameters[0].typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
    expect(wndProc.methods[1].parameters[0].typeIdentifier.name,
        equals('Windows.Win32.WindowsAndMessaging.HWND'));

    expect(wndProc.methods[1].parameters[1].hasAttribute(CorParamAttr.pdIn),
        isTrue);
    expect(wndProc.methods[1].parameters[1].name, equals('param1'));
    expect(wndProc.methods[1].parameters[1].typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_U4));

    expect(wndProc.methods[1].parameters[2].hasAttribute(CorParamAttr.pdIn),
        isTrue);
    expect(wndProc.methods[1].parameters[2].name, equals('param2'));
    expect(wndProc.methods[1].parameters[2].typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
    expect(wndProc.methods[1].parameters[2].typeIdentifier.name,
        equals('Windows.Win32.WindowsAndMessaging.WPARAM'));

    expect(wndProc.methods[1].parameters[3].hasAttribute(CorParamAttr.pdIn),
        isTrue);
    expect(wndProc.methods[1].parameters[3].name, equals('param3'));
    expect(wndProc.methods[1].parameters[3].typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
    expect(wndProc.methods[1].parameters[3].typeIdentifier.name,
        equals('Windows.Win32.WindowsAndMessaging.LPARAM'));
    expect(wndProc.methods[1].implFeatures.codeType, equals(CodeType.Runtime));
    expect(wndProc.methods[1].implFeatures.isManaged, isTrue);
  });
}

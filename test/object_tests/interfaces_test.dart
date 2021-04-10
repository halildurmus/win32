@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

/// Exhaustively test an interface representation.
void main() {
// .class interface public auto ansi abstract Windows.Win32.Shell.IFileOperation2
// 	implements [Windows.Win32.winmd]Windows.Win32.Shell.IFileOperation
// {
// 	.custom instance void [Windows.Win32.Interop]Windows.Win32.Interop.GuidAttribute::.ctor(uint32, uint16, uint16, uint8, uint8, uint8, uint8, uint8, uint8, uint8, uint8) = (
// 		01 00 c1 23 8f cd 61 8f 16 49 90 9d 55 bd d0 91
// 		87 53 00 00
// 	)
// 	// Methods
// 	.method public hidebysig newslot abstract virtual
// 		instance valuetype [Windows.Win32.winmd]Windows.Win32.Com.HRESULT SetOperationFlags2 (
// 			[in] valuetype [Windows.Win32.winmd]Windows.Win32.Shell.FILE_OPERATION_FLAGS2 operationFlags2
// 		) cil managed
// 	{
// 	} // end of method IFileOperation2::SetOperationFlags2

// } // end of class Windows.Win32.Shell.IFileOperation2
  test('Windows.Win32.Shell.IFileOperation2', () {
    final scope = MetadataStore.getWin32Scope();
    final ifop2 = scope.findTypeDef('Windows.Win32.Shell.IFileOperation2')!;

    expect(ifop2.isInterface, isTrue);
    expect(ifop2.typeVisibility, equals(TypeVisibility.public));
    expect(ifop2.typeLayout, equals(TypeLayout.auto));
    expect(ifop2.stringFormat, equals(StringFormat.ansi));
    expect(ifop2.isAbstract, isTrue);
    expect(ifop2.typeName, equals('Windows.Win32.Shell.IFileOperation2'));

    expect(ifop2.interfaces.length, equals(1));
    expect(ifop2.interfaces[0].typeName,
        equals('Windows.Win32.Shell.IFileOperation'));

    expect(
        ifop2.customAttributeAsBytes('Windows.Win32.Interop.GuidAttribute'),
        equals([
          0x01, 0x00, 0xc1, 0x23, 0x8f, 0xcd, 0x61, 0x8f, //
          0x16, 0x49, 0x90, 0x9d, 0x55, 0xbd, 0xd0, 0x91, //
          0x87, 0x53, 0x00, 0x00
        ]));

    expect(ifop2.methods.length, equals(1));
    expect(ifop2.methods[0].memberAccess, equals(MemberAccess.public));
    expect(ifop2.methods[0].isHideBySig, isTrue);
    expect(ifop2.methods[0].vTableLayout, equals(VtableLayout.newSlot));
    expect(ifop2.methods[0].isAbstract, isTrue);
    expect(ifop2.methods[0].isVirtual, isTrue);

    expect(ifop2.methods[0].returnType.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
    expect(ifop2.methods[0].returnType.typeIdentifier.name,
        equals('Windows.Win32.Com.HRESULT'));
    expect(ifop2.methods[0].methodName, equals('SetOperationFlags2'));

    expect(ifop2.methods[0].parameters.length, equals(1));
    expect(ifop2.methods[0].parameters[0].isInParam, isTrue);

    expect(ifop2.methods[0].parameters[0].typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
    expect(ifop2.methods[0].parameters[0].typeIdentifier.name,
        equals('Windows.Win32.Shell.FILE_OPERATION_FLAGS2'));
    expect(ifop2.methods[0].parameters[0].name, equals('operationFlags2'));

    expect(ifop2.methods[0].implFeatures.codeType, equals(CodeType.IL));
    expect(ifop2.methods[0].implFeatures.isManaged, isTrue);
  });
}

@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

/// Exhaustively test a COM interface representation.
void main() {
// .class interface public auto ansi abstract Windows.Win32.UI.Shell.IFileOperation2
// 	implements [Windows.Win32.winmd]Windows.Win32.UI.Shell.IFileOperation
// {
// 	.custom instance void [Windows.Win32.Interop]Windows.Win32.Interop.GuidAttribute::.ctor(uint32, uint16, uint16, uint8, uint8, uint8, uint8, uint8, uint8, uint8, uint8) = (
// 		01 00 c1 23 8f cd 61 8f 16 49 90 9d 55 bd d0 91
// 		87 53 00 00
// 	)
// 	// Methods
// 	.method public hidebysig newslot abstract virtual
// 		instance valuetype [Windows.Win32.winmd]Windows.Win32.System.Com.HRESULT SetOperationFlags2 (
// 			[in] valuetype [Windows.Win32.winmd]Windows.Win32.UI.Shell.FILE_OPERATION_FLAGS2 operationFlags2
// 		) cil managed
// 	{
// 	} // end of method IFileOperation2::SetOperationFlags2

// } // end of class Windows.Win32.UI.Shell.IFileOperation2

  test('Windows.Win32.UI.Shell.IFileOperation2', () {
    final scope = MetadataStore.getWin32Scope();
    final ifop2 = scope.findTypeDef('Windows.Win32.UI.Shell.IFileOperation2')!;

    check(ifop2.isInterface).isTrue();
    check(ifop2.typeVisibility).equals(TypeVisibility.public);
    check(ifop2.typeLayout).equals(TypeLayout.auto);
    check(ifop2.stringFormat).equals(StringFormat.ansi);
    check(ifop2.isAbstract).isTrue();
    check(ifop2.name).equals('Windows.Win32.UI.Shell.IFileOperation2');

    check(ifop2.interfaces.length).equals(1);
    check(ifop2.interfaces[0].name)
        .equals('Windows.Win32.UI.Shell.IFileOperation');

    check(ifop2
            .findAttribute('Windows.Win32.Interop.GuidAttribute')!
            .signatureBlob
            .toList())
        .deepEquals([
      0x01, 0x00, 0xc1, 0x23, 0x8f, 0xcd, 0x61, 0x8f, //
      0x16, 0x49, 0x90, 0x9d, 0x55, 0xbd, 0xd0, 0x91, //
      0x87, 0x53, 0x00, 0x00
    ]);

    check(ifop2.methods.length).equals(1);
    check(ifop2.methods[0].memberAccess).equals(MemberAccess.public);
    check(ifop2.methods[0].isHideBySig).isTrue();
    check(ifop2.methods[0].vTableLayout).equals(VtableLayout.newSlot);
    check(ifop2.methods[0].isAbstract).isTrue();
    check(ifop2.methods[0].isVirtual).isTrue();

    check(ifop2.methods[0].returnType.typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(ifop2.methods[0].returnType.typeIdentifier.name)
        .equals('Windows.Win32.Foundation.HRESULT');
    check(ifop2.methods[0].name).equals('SetOperationFlags2');

    check(ifop2.methods[0].parameters.length).equals(1);
    check(ifop2.methods[0].parameters[0].isInParam).isTrue();

    check(ifop2.methods[0].parameters[0].typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(ifop2.methods[0].parameters[0].typeIdentifier.name)
        .equals('Windows.Win32.UI.Shell.FILE_OPERATION_FLAGS2');
    check(ifop2.methods[0].parameters[0].name).equals('operationFlags2');

    check(ifop2.methods[0].implFeatures.codeType).equals(CodeType.msil);
    check(ifop2.methods[0].implFeatures.isManaged).isTrue();
  });
}

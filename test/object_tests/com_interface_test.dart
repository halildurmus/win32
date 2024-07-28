@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

// Exhaustively test a COM interface representation

void main() {
  late Scope scope;

  setUpAll(() async {
    scope = await MetadataStore.loadWin32Metadata();
  });

// .class interface public auto ansi abstract Windows.Win32.UI.Shell.IFileOperation2
// 	implements [Windows.Win32.winmd]Windows.Win32.UI.Shell.IFileOperation
// {
// 	.custom instance void [Windows.Win32.winmd]Windows.Win32.Foundation.Metadata.GuidAttribute::.ctor(uint32, uint16, uint16, uint8, uint8, uint8, uint8, uint8, uint8, uint8, uint8) = (
// 		01 00 c1 23 8f cd 61 8f 16 49 90 9d 55 bd d0 91
// 		87 53 00 00
// 	)
// 	// Methods
// 	.method public hidebysig newslot abstract virtual
// 		instance valuetype [Windows.Win32.winmd]Windows.Win32.Foundation.HRESULT SetOperationFlags2 (
// 			[in] valuetype [Windows.Win32.winmd]Windows.Win32.UI.Shell.FILE_OPERATION_FLAGS2 operationFlags2
// 		) cil managed
// 	{
// 	} // end of method IFileOperation2::SetOperationFlags2

// } // end of class Windows.Win32.UI.Shell.IFileOperation2

  test('Windows.Win32.UI.Shell.IFileOperation2', () {
    final typeDef =
        scope.findTypeDef('Windows.Win32.UI.Shell.IFileOperation2')!;
    check(typeDef.customAttributes.length).equals(1);
    check(typeDef.isAbstract).isTrue();
    check(typeDef.isInterface).isTrue();
    check(typeDef.name).equals('Windows.Win32.UI.Shell.IFileOperation2');
    check(typeDef.stringFormat).equals(StringFormat.ansi);
    check(typeDef.typeLayout).equals(TypeLayout.auto);
    check(typeDef.typeVisibility).equals(TypeVisibility.public);

    check(typeDef.interfaces.length).equals(1);
    final [interface] = typeDef.interfaces;
    check(interface.name).equals('Windows.Win32.UI.Shell.IFileOperation');

    final guidAttribute = typeDef
        .findAttribute('Windows.Win32.Foundation.Metadata.GuidAttribute');
    check(guidAttribute).isNotNull();
    check(guidAttribute!.signatureBlob.toList()).deepEquals([
      0x01, 0x00, 0xc1, 0x23, 0x8f, 0xcd, 0x61, 0x8f, //
      0x16, 0x49, 0x90, 0x9d, 0x55, 0xbd, 0xd0, 0x91, //
      0x87, 0x53, 0x00, 0x00
    ]);

    check(typeDef.methods.length).equals(1);
    final [method] = typeDef.methods;
    check(method.isAbstract).isTrue();
    check(method.isHideBySig).isTrue();
    check(method.isVirtual).isTrue();
    check(method.memberAccess).equals(MemberAccess.public);
    check(method.name).equals('SetOperationFlags2');
    check(method.vTableLayout).equals(VtableLayout.newSlot);

    final returnTypeIdentifier = method.returnType.typeIdentifier;
    check(returnTypeIdentifier.baseType).equals(BaseType.valueTypeModifier);
    check(returnTypeIdentifier.name).equals('Windows.Win32.Foundation.HRESULT');

    check(method.parameters.length).equals(1);
    final [parameter] = method.parameters;
    check(parameter.isInParam).isTrue();
    check(parameter.name).equals('operationFlags2');

    final paramTypeIdentifier = parameter.typeIdentifier;
    check(paramTypeIdentifier.baseType).equals(BaseType.valueTypeModifier);
    check(paramTypeIdentifier.name)
        .equals('Windows.Win32.UI.Shell.FILE_OPERATION_FLAGS2');

    final MethodImplementationFeatures(:codeType, :isManaged) =
        method.implFeatures;
    check(codeType).equals(CodeType.msil);
    check(isManaged).isTrue();
  });

  tearDownAll(MetadataStore.close);
}

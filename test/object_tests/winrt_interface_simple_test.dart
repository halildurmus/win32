// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

// Exhaustively test a WinRT interface representation without generics

void main() {
  late Scope scope;

  setUpAll(() async {
    scope = await MetadataStore.loadWinRTMetadata();
  });

  // .class interface public auto ansi abstract import windowsruntime Windows.Foundation.IAsyncInfo
  // {
  // 	.custom instance void [Windows.Foundation.winmd]Windows.Foundation.Metadata.GuidAttribute::.ctor(uint32, uint16, uint16, uint8, uint8, uint8, uint8, uint8, uint8, uint8, uint8) = (
  // 		01 00 36 00 00 00 00 00 00 00 c0 00 00 00 00 00
  // 		00 46 00 00
  // 	)
  // 	.custom instance void [Windows.Foundation.winmd]Windows.Foundation.Metadata.ContractVersionAttribute::.ctor(class [mscorlib]System.Type, uint32) = (
  // 		01 00 25 57 69 6e 64 6f 77 73 2e 46 6f 75 6e 64
  // 		61 74 69 6f 6e 2e 46 6f 75 6e 64 61 74 69 6f 6e
  // 		43 6f 6e 74 72 61 63 74 00 00 01 00 00 00
  // 	)
  // 	// Methods
  // 	.method public hidebysig specialname newslot abstract virtual
  // 		instance uint32 get_Id () runtime managed internalcall
  // 	{
  // 	} // end of method IAsyncInfo::get_Id

  // 	.method public hidebysig specialname newslot abstract virtual
  // 		instance valuetype [Windows.Foundation.winmd]Windows.Foundation.AsyncStatus get_Status () runtime managed internalcall
  // 	{
  // 	} // end of method IAsyncInfo::get_Status

  // 	.method public hidebysig specialname newslot abstract virtual
  // 		instance valuetype [System.Runtime]System.Exception get_ErrorCode () runtime managed internalcall
  // 	{
  // 	} // end of method IAsyncInfo::get_ErrorCode

  // 	.method public hidebysig newslot abstract virtual
  // 		instance void Cancel () runtime managed internalcall
  // 	{
  // 	} // end of method IAsyncInfo::Cancel

  // 	.method public hidebysig newslot abstract virtual
  // 		instance void Close () runtime managed internalcall
  // 	{
  // 	} // end of method IAsyncInfo::Close

  // 	// Properties
  // 	.property instance valuetype [System.Runtime]System.Exception ErrorCode()
  // 	{
  // 		.get instance valuetype [System.Runtime]System.Exception Windows.Foundation.IAsyncInfo::get_ErrorCode()
  // 	}
  // 	.property instance uint32 Id()
  // 	{
  // 		.get instance uint32 Windows.Foundation.IAsyncInfo::get_Id()
  // 	}
  // 	.property instance valuetype [Windows.Foundation.winmd]Windows.Foundation.AsyncStatus Status()
  // 	{
  // 		.get instance valuetype [Windows.Foundation.winmd]Windows.Foundation.AsyncStatus Windows.Foundation.IAsyncInfo::get_Status()
  // 	}

  // } // end of class Windows.Foundation.IAsyncInfo

  test('Windows.Foundation.IAsyncInfo', () {
    final typeDef = scope.findTypeDef('Windows.Foundation.IAsyncInfo')!;
    check(typeDef.customAttributes.length).equals(2);
    check(typeDef.isAbstract).isTrue();
    check(typeDef.isInterface).isTrue();
    check(typeDef.isWindowsRuntime).isTrue();
    check(typeDef.name).equals('Windows.Foundation.IAsyncInfo');
    check(typeDef.stringFormat).equals(StringFormat.ansi);
    check(typeDef.typeLayout).equals(TypeLayout.auto);
    check(typeDef.typeVisibility).equals(TypeVisibility.public);

    final contractVersionAttribute = typeDef
        .findAttribute('Windows.Foundation.Metadata.ContractVersionAttribute');
    check(contractVersionAttribute).isNotNull();
    check(contractVersionAttribute!.signatureBlob.toList())
        .containsInOrder([0x01, 0x00, 0x25, 0x57, 0x69, 0x6e, 0x64, 0x6f]);

    final guidAttribute =
        typeDef.findAttribute('Windows.Foundation.Metadata.GuidAttribute');
    check(guidAttribute).isNotNull();
    check(guidAttribute!.signatureBlob.toList()).deepEquals([
      0x01, 0x00, 0x36, 0x00, 0x00, 0x00, 0x00, 0x00, //
      0x00, 0x00, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, //
      0x00, 0x46, 0x00, 0x00
    ]);

    check(typeDef.methods.length).equals(5);
    final firstMethod = typeDef.methods.first;
    check(firstMethod.implFeatures.codeType).equals(CodeType.runtime);
    check(firstMethod.implFeatures.isManaged).isTrue();
    check(firstMethod.isAbstract).isTrue();
    check(firstMethod.isHideBySig).isTrue();
    check(firstMethod.isSpecialName).isTrue();
    check(firstMethod.isVirtual).isTrue();
    check(firstMethod.memberAccess).equals(MemberAccess.public);
    check(firstMethod.name).equals('get_Id');
    check(firstMethod.returnType.typeIdentifier.baseType)
        .equals(BaseType.uint32Type);
    check(firstMethod.vTableLayout).equals(VtableLayout.newSlot);

    check(typeDef.properties.length).equals(3);
    final firstProperty = typeDef.properties.first;
    check(firstProperty.getterMethod?.name).equals('get_ErrorCode');
    check(firstProperty.hasGetter).isTrue();
    check(firstProperty.hasSetter).isFalse();
    check(firstProperty.name).equals('ErrorCode');
    check(firstProperty.typeIdentifier.name)
        .equals('Windows.Foundation.HResult');
    check(firstProperty.typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
  });

  tearDownAll(MetadataStore.close);
}

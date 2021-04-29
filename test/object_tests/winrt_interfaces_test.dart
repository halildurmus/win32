@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

/// Exhaustively test a WinRT interface representation.
void main() {
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
    final iai =
        MetadataStore.getMetadataForType('Windows.Foundation.IAsyncInfo')!;
    expect(iai.isInterface, isTrue);
    expect(iai.typeVisibility, equals(TypeVisibility.public));
    expect(iai.typeLayout, equals(TypeLayout.auto));
    expect(iai.stringFormat, equals(StringFormat.ansi));
    expect(iai.isAbstract, isTrue);
    // expect(iai.isImported, isTrue);
    expect(iai.isWindowsRuntime, isTrue);
    expect(iai.name, equals('Windows.Foundation.IAsyncInfo'));

    expect(iai.customAttributes.length, equals(2));
    expect(
        iai.customAttributeAsBytes('Windows.Foundation.Metadata.GuidAttribute'),
        equals([
          0x01, 0x00, 0x36, 0x00, 0x00, 0x00, 0x00, 0x00, //
          0x00, 0x00, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, //
          0x00, 0x46, 0x00, 0x00
        ]));
    expect(
        iai.customAttributeAsBytes(
            'Windows.Foundation.Metadata.ContractVersionAttribute'),
        containsAllInOrder(
            <int>[0x01, 0x00, 0x25, 0x57, 0x69, 0x6e, 0x64, 0x6f]));

    expect(iai.methods.length, equals(5));
    expect(iai.methods[0].memberAccess, equals(MemberAccess.public));
    expect(iai.methods[0].isHideBySig, isTrue);
    expect(iai.methods[0].isSpecialName, isTrue);
    expect(iai.methods[0].vTableLayout, equals(VtableLayout.newSlot));
    expect(iai.methods[0].isAbstract, isTrue);
    expect(iai.methods[0].isVirtual, isTrue);
    expect(iai.methods[0].returnType.typeIdentifier.baseType,
        equals(BaseType.Uint32));
    expect(iai.methods[0].name, equals('get_Id'));
    expect(iai.methods[0].implFeatures.codeType, equals(CodeType.runtime));
    expect(iai.methods[0].implFeatures.isManaged, isTrue);

    expect(iai.properties.length, equals(3));
    expect(iai.properties[0].typeIdentifier.name,
        equals('Windows.Foundation.HResult'));
    expect(iai.properties[0].typeIdentifier.baseType,
        equals(BaseType.ValueTypeModifier));
    expect(iai.properties[0].name, equals('ErrorCode'));
    expect(iai.properties[0].hasGetter, isTrue);
    expect(iai.properties[0].getterMethod?.name, equals('get_ErrorCode'));
    expect(iai.properties[0].hasSetter, isFalse);
  });
}

@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

/// Exhaustively test a WinRT interface representation with generics.
void main() {
  // .class interface public auto ansi abstract import windowsruntime Windows.Foundation.IAsyncOperationWithProgress`2<TResult, TProgress>
  // 	implements [Windows.Foundation.winmd]Windows.Foundation.IAsyncInfo
  // {
  // 	.custom instance void [Windows.Foundation.winmd]Windows.Foundation.Metadata.GuidAttribute::.ctor(uint32, uint16, uint16, uint8, uint8, uint8, uint8, uint8, uint8, uint8, uint8) = (
  // 		01 00 d7 36 d0 b5 97 e2 8f 49 ba 60 02 89 e7 6e
  // 		23 dd 00 00
  // 	)
  // 	.custom instance void [Windows.Foundation.winmd]Windows.Foundation.Metadata.ContractVersionAttribute::.ctor(class [mscorlib]System.Type, uint32) = (
  // 		01 00 25 57 69 6e 64 6f 77 73 2e 46 6f 75 6e 64
  // 		61 74 69 6f 6e 2e 46 6f 75 6e 64 61 74 69 6f 6e
  // 		43 6f 6e 74 72 61 63 74 00 00 01 00 00 00
  // 	)
  // 	// Methods
  // 	.method public hidebysig specialname newslot abstract virtual
  // 		instance void put_Progress (
  // 			[in] class [Windows.Foundation.winmd]Windows.Foundation.AsyncOperationProgressHandler`2<!TResult, !TProgress> 'handler'
  // 		) runtime managed internalcall
  // 	{
  // 	} // end of method IAsyncOperationWithProgress`2::put_Progress

  // 	.method public hidebysig specialname newslot abstract virtual
  // 		instance class [Windows.Foundation.winmd]Windows.Foundation.AsyncOperationProgressHandler`2<!TResult, !TProgress> get_Progress () runtime managed internalcall
  // 	{
  // 	} // end of method IAsyncOperationWithProgress`2::get_Progress

  // 	.method public hidebysig specialname newslot abstract virtual
  // 		instance void put_Completed (
  // 			[in] class [Windows.Foundation.winmd]Windows.Foundation.AsyncOperationWithProgressCompletedHandler`2<!TResult, !TProgress> 'handler'
  // 		) runtime managed internalcall
  // 	{
  // 	} // end of method IAsyncOperationWithProgress`2::put_Completed

  // 	.method public hidebysig specialname newslot abstract virtual
  // 		instance class [Windows.Foundation.winmd]Windows.Foundation.AsyncOperationWithProgressCompletedHandler`2<!TResult, !TProgress> get_Completed () runtime managed internalcall
  // 	{
  // 	} // end of method IAsyncOperationWithProgress`2::get_Completed

  // 	.method public hidebysig newslot abstract virtual
  // 		instance !TResult GetResults () runtime managed internalcall
  // 	{
  // 	} // end of method IAsyncOperationWithProgress`2::GetResults

  // 	// Properties
  // 	.property instance class [Windows.Foundation.winmd]Windows.Foundation.AsyncOperationProgressHandler`2<!TResult, !TProgress> Progress()
  // 	{
  // 		.get instance class [Windows.Foundation.winmd]Windows.Foundation.AsyncOperationProgressHandler`2<!0, !1> Windows.Foundation.IAsyncOperationWithProgress`2::get_Progress()
  // 		.set instance void Windows.Foundation.IAsyncOperationWithProgress`2::put_Progress(class [Windows.Foundation.winmd]Windows.Foundation.AsyncOperationProgressHandler`2<!0, !1>)
  // 	}
  // 	.property instance class [Windows.Foundation.winmd]Windows.Foundation.AsyncOperationWithProgressCompletedHandler`2<!TResult, !TProgress> Completed()
  // 	{
  // 		.get instance class [Windows.Foundation.winmd]Windows.Foundation.AsyncOperationWithProgressCompletedHandler`2<!0, !1> Windows.Foundation.IAsyncOperationWithProgress`2::get_Completed()
  // 		.set instance void Windows.Foundation.IAsyncOperationWithProgress`2::put_Completed(class [Windows.Foundation.winmd]Windows.Foundation.AsyncOperationWithProgressCompletedHandler`2<!0, !1>)
  // 	}

  // } // end of class Windows.Foundation.IAsyncOperationWithProgress`2

  test('Windows.Foundation.IAsyncOperationWithProgress', () {
    final iaowp = MetadataStore.getMetadataForType(
        'Windows.Foundation.IAsyncOperationWithProgress`2')!;
    expect(iaowp.isInterface, isTrue);
    expect(iaowp.typeVisibility, equals(TypeVisibility.public));
    expect(iaowp.typeLayout, equals(TypeLayout.auto));
    expect(iaowp.stringFormat, equals(StringFormat.ansi));
    expect(iaowp.isAbstract, isTrue);
    // expect(iaowp.isImported, isTrue);
    expect(iaowp.isWindowsRuntime, isTrue);
    expect(
        iaowp.name, equals('Windows.Foundation.IAsyncOperationWithProgress`2'));
    expect(iaowp.genericParams.length, equals(2));
    expect(iaowp.genericParams.first.name, equals('TResult'));
    expect(iaowp.genericParams.last.name, equals('TProgress'));

    expect(iaowp.interfaces.length, equals(1));
    expect(
        iaowp.interfaces.first.name, equals('Windows.Foundation.IAsyncInfo'));

    expect(iaowp.customAttributes.length, equals(2));
    expect(
        iaowp.customAttributeAsBytes(
            'Windows.Foundation.Metadata.GuidAttribute'),
        equals([
          0x01, 0x00, 0xd7, 0x36, 0xd0, 0xb5, 0x97, 0xe2, //
          0x8f, 0x49, 0xba, 0x60, 0x02, 0x89, 0xe7, 0x6e, //
          0x23, 0xdd, 0x00, 0x00
        ]));
    expect(
        iaowp.customAttributeAsBytes(
            'Windows.Foundation.Metadata.ContractVersionAttribute'),
        containsAllInOrder(
            <int>[0x01, 0x00, 0x25, 0x57, 0x69, 0x6e, 0x64, 0x6f]));

    expect(iaowp.methods.length, equals(5));

    final put_Progress = iaowp.methods[0];
    expect(put_Progress.memberAccess, equals(MemberAccess.public));
    expect(put_Progress.isHideBySig, isTrue);
    expect(put_Progress.isSpecialName, isTrue);
    expect(put_Progress.vTableLayout, equals(VtableLayout.newSlot));
    expect(put_Progress.isAbstract, isTrue);
    expect(put_Progress.isVirtual, isTrue);
    expect(
        put_Progress.returnType.typeIdentifier.baseType, equals(BaseType.Void));
    expect(put_Progress.name, equals('put_Progress'));
    expect(put_Progress.isSetProperty, isTrue);
    expect(put_Progress.parameters.length, equals(1));
    expect(put_Progress.parameters.first.typeIdentifier.name,
        equals('Windows.Foundation.AsyncOperationProgressHandler`2'));
    expect(put_Progress.parameters.first.typeIdentifier.type?.name,
        equals('Windows.Foundation.AsyncOperationProgressHandler`2'));
    expect(
        put_Progress.parameters.first.typeIdentifier.type?.genericParams.length,
        equals(2));
    expect(
        put_Progress
            .parameters.first.typeIdentifier.type?.genericParams.first.name,
        equals('TResult'));
    expect(
        put_Progress
            .parameters.first.typeIdentifier.type?.genericParams.last.name,
        equals('TProgress'));
    expect(put_Progress.parameters.first.name, equals('handler'));
    expect(put_Progress.implFeatures.codeType, equals(CodeType.runtime));
    expect(put_Progress.implFeatures.isManaged, isTrue);

    final get_Progress = iaowp.methods[1];
    expect(get_Progress.memberAccess, equals(MemberAccess.public));
    expect(get_Progress.isHideBySig, isTrue);
    expect(get_Progress.isSpecialName, isTrue);
    expect(get_Progress.vTableLayout, equals(VtableLayout.newSlot));
    expect(get_Progress.isAbstract, isTrue);
    expect(get_Progress.isVirtual, isTrue);
    expect(get_Progress.name, equals('get_Progress'));
    expect(get_Progress.returnType.typeIdentifier.name,
        equals('Windows.Foundation.AsyncOperationProgressHandler`2'));
    expect(get_Progress.returnType.typeIdentifier.type?.name,
        equals('Windows.Foundation.AsyncOperationProgressHandler`2'));
    expect(get_Progress.returnType.typeIdentifier.type?.genericParams.length,
        equals(2));
    expect(
        get_Progress.returnType.typeIdentifier.type?.genericParams.first.name,
        equals('TResult'));
    expect(get_Progress.returnType.typeIdentifier.type?.genericParams.last.name,
        equals('TProgress'));
    expect(get_Progress.isGetProperty, isTrue);
    expect(get_Progress.parameters.length, isZero);

    expect(get_Progress.implFeatures.codeType, equals(CodeType.runtime));
    expect(get_Progress.implFeatures.isManaged, isTrue);

    final put_Completed = iaowp.methods[2];
    expect(put_Completed.memberAccess, equals(MemberAccess.public));
    expect(put_Completed.isHideBySig, isTrue);
    expect(put_Completed.isSpecialName, isTrue);
    expect(put_Completed.vTableLayout, equals(VtableLayout.newSlot));
    expect(put_Completed.isAbstract, isTrue);
    expect(put_Completed.isVirtual, isTrue);
    expect(put_Completed.returnType.typeIdentifier.baseType,
        equals(BaseType.Void));
    expect(put_Completed.name, equals('put_Completed'));
    expect(put_Completed.isSetProperty, isTrue);
    expect(put_Completed.parameters.length, equals(1));
    expect(
        put_Completed.parameters.first.typeIdentifier.name,
        equals(
            'Windows.Foundation.AsyncOperationWithProgressCompletedHandler`2'));
    expect(
        put_Completed.parameters.first.typeIdentifier.type?.name,
        equals(
            'Windows.Foundation.AsyncOperationWithProgressCompletedHandler`2'));
    expect(
        put_Completed
            .parameters.first.typeIdentifier.type?.genericParams.length,
        equals(2));
    expect(
        put_Completed
            .parameters.first.typeIdentifier.type?.genericParams.first.name,
        equals('TResult'));
    expect(
        put_Completed
            .parameters.first.typeIdentifier.type?.genericParams.last.name,
        equals('TProgress'));
    expect(put_Completed.parameters.first.name, equals('handler'));
    expect(put_Completed.implFeatures.codeType, equals(CodeType.runtime));
    expect(put_Completed.implFeatures.isManaged, isTrue);

    final get_Completed = iaowp.methods[3];
    expect(get_Completed.memberAccess, equals(MemberAccess.public));
    expect(get_Completed.isHideBySig, isTrue);
    expect(get_Completed.isSpecialName, isTrue);
    expect(get_Completed.vTableLayout, equals(VtableLayout.newSlot));
    expect(get_Completed.isAbstract, isTrue);
    expect(get_Completed.isVirtual, isTrue);
    expect(get_Completed.name, equals('get_Completed'));
    expect(
        get_Completed.returnType.typeIdentifier.name,
        equals(
            'Windows.Foundation.AsyncOperationWithProgressCompletedHandler`2'));
    expect(
        get_Completed.returnType.typeIdentifier.type?.name,
        equals(
            'Windows.Foundation.AsyncOperationWithProgressCompletedHandler`2'));
    expect(get_Completed.returnType.typeIdentifier.type?.genericParams.length,
        equals(2));
    expect(
        get_Completed.returnType.typeIdentifier.type?.genericParams.first.name,
        equals('TResult'));
    expect(
        get_Completed.returnType.typeIdentifier.type?.genericParams.last.name,
        equals('TProgress'));
    expect(get_Completed.isGetProperty, isTrue);
    expect(get_Completed.parameters.length, isZero);

    expect(get_Completed.implFeatures.codeType, equals(CodeType.runtime));
    expect(get_Completed.implFeatures.isManaged, isTrue);

    final get_Results = iaowp.methods[4];
    expect(get_Results.memberAccess, equals(MemberAccess.public));
    expect(get_Results.isHideBySig, isTrue);
    expect(get_Results.isSpecialName, isFalse);
    expect(get_Results.vTableLayout, equals(VtableLayout.newSlot));
    expect(get_Results.isAbstract, isTrue);
    expect(get_Results.isVirtual, isTrue);
    expect(get_Results.returnType.typeIdentifier.baseType,
        equals(BaseType.ClassVariableTypeModifier));
    expect(get_Results.returnType.typeIdentifier.genericParameterSequence,
        equals(0)); // TResult
    expect(get_Results.name, equals('GetResults'));
    expect(get_Results.isGetProperty, isFalse);
    expect(get_Results.isSetProperty, isFalse);
    expect(get_Results.parameters.length, isZero);
    expect(get_Results.hasGenericParameters, isFalse);
    expect(get_Results.implFeatures.codeType, equals(CodeType.runtime));
    expect(get_Results.implFeatures.isManaged, isTrue);

    expect(iaowp.properties.length, equals(2));

    final progress = iaowp.properties[0];
    expect(progress.typeIdentifier.name,
        equals('Windows.Foundation.AsyncOperationProgressHandler`2'));
    expect(
        progress.typeIdentifier.baseType, equals(BaseType.GenericTypeModifier));
    expect(progress.typeIdentifier.type?.genericParams.length, equals(2));
    expect(progress.typeIdentifier.type?.genericParams.first.name,
        equals('TResult'));
    expect(progress.typeIdentifier.type?.genericParams.last.name,
        equals('TProgress'));
    expect(progress.name, equals('Progress'));
    expect(progress.hasGetter, isTrue);
    expect(progress.getterMethod?.name, equals('get_Progress'));
    expect(progress.getterMethod?.token, equals(get_Progress.token));
    expect(progress.hasSetter, isTrue);
    expect(progress.setterMethod?.name, equals('put_Progress'));
    expect(progress.setterMethod?.token, equals(put_Progress.token));

    final completed = iaowp.properties[1];
    expect(
        completed.typeIdentifier.name,
        equals(
            'Windows.Foundation.AsyncOperationWithProgressCompletedHandler`2'));
    expect(completed.typeIdentifier.baseType,
        equals(BaseType.GenericTypeModifier));
    expect(completed.typeIdentifier.type?.genericParams.length, equals(2));
    expect(completed.typeIdentifier.type?.genericParams.first.name,
        equals('TResult'));
    expect(completed.typeIdentifier.type?.genericParams.last.name,
        equals('TProgress'));
    expect(completed.name, equals('Completed'));
    expect(completed.hasGetter, isTrue);
    expect(completed.getterMethod?.name, equals('get_Completed'));
    expect(completed.getterMethod?.token, equals(get_Completed.token));
    expect(completed.hasSetter, isTrue);
    expect(completed.setterMethod?.name, equals('put_Completed'));
    expect(completed.setterMethod?.token, equals(put_Completed.token));
  });
}

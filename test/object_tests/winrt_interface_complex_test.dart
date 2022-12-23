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

    expect(iaowp.findAttribute('Windows.Foundation.Metadata.GuidAttribute'),
        isNotNull);
    expect(iaowp.guid, equals('{b5d036d7-e297-498f-ba60-0289e76e23dd}'));

    final contractAttr = iaowp
        .findAttribute('Windows.Foundation.Metadata.ContractVersionAttribute');
    expect(contractAttr?.parameters.length, equals(2));
    expect(contractAttr?.parameters.first.type.baseType,
        equals(BaseType.classTypeModifier));
    expect(contractAttr?.parameters.first.value,
        equals('Windows.Foundation.FoundationContract'));
    expect(contractAttr?.parameters.last.type.baseType,
        equals(BaseType.uint32Type));
    expect(contractAttr?.parameters.last.value, equals(65536));

    expect(iaowp.methods.length, equals(5));

    final putProgress = iaowp.methods[0];
    expect(putProgress.memberAccess, equals(MemberAccess.public));
    expect(putProgress.isHideBySig, isTrue);
    expect(putProgress.isSpecialName, isTrue);
    expect(putProgress.vTableLayout, equals(VtableLayout.newSlot));
    expect(putProgress.isAbstract, isTrue);
    expect(putProgress.isVirtual, isTrue);
    expect(putProgress.returnType.typeIdentifier.baseType,
        equals(BaseType.voidType));
    expect(putProgress.name, equals('put_Progress'));
    expect(putProgress.isSetProperty, isTrue);
    expect(putProgress.parameters.length, equals(1));
    expect(putProgress.parameters.first.typeIdentifier.name,
        equals('Windows.Foundation.AsyncOperationProgressHandler`2'));
    expect(putProgress.parameters.first.typeIdentifier.type?.name,
        equals('Windows.Foundation.AsyncOperationProgressHandler`2'));
    expect(
        putProgress.parameters.first.typeIdentifier.type?.genericParams.length,
        equals(2));
    expect(
        putProgress
            .parameters.first.typeIdentifier.type?.genericParams.first.name,
        equals('TResult'));
    expect(
        putProgress
            .parameters.first.typeIdentifier.type?.genericParams.last.name,
        equals('TProgress'));
    expect(putProgress.parameters.first.name, equals('handler'));
    expect(putProgress.implFeatures.codeType, equals(CodeType.runtime));
    expect(putProgress.implFeatures.isManaged, isTrue);

    final getProgress = iaowp.methods[1];
    expect(getProgress.memberAccess, equals(MemberAccess.public));
    expect(getProgress.isHideBySig, isTrue);
    expect(getProgress.isSpecialName, isTrue);
    expect(getProgress.vTableLayout, equals(VtableLayout.newSlot));
    expect(getProgress.isAbstract, isTrue);
    expect(getProgress.isVirtual, isTrue);
    expect(getProgress.name, equals('get_Progress'));
    expect(getProgress.returnType.typeIdentifier.name,
        equals('Windows.Foundation.AsyncOperationProgressHandler`2'));
    expect(getProgress.returnType.typeIdentifier.type?.name,
        equals('Windows.Foundation.AsyncOperationProgressHandler`2'));
    expect(getProgress.returnType.typeIdentifier.type?.genericParams.length,
        equals(2));
    expect(getProgress.returnType.typeIdentifier.type?.genericParams.first.name,
        equals('TResult'));
    expect(getProgress.returnType.typeIdentifier.type?.genericParams.last.name,
        equals('TProgress'));
    expect(getProgress.isGetProperty, isTrue);
    expect(getProgress.parameters.length, isZero);

    expect(getProgress.implFeatures.codeType, equals(CodeType.runtime));
    expect(getProgress.implFeatures.isManaged, isTrue);

    final putCompleted = iaowp.methods[2];
    expect(putCompleted.memberAccess, equals(MemberAccess.public));
    expect(putCompleted.isHideBySig, isTrue);
    expect(putCompleted.isSpecialName, isTrue);
    expect(putCompleted.vTableLayout, equals(VtableLayout.newSlot));
    expect(putCompleted.isAbstract, isTrue);
    expect(putCompleted.isVirtual, isTrue);
    expect(putCompleted.returnType.typeIdentifier.baseType,
        equals(BaseType.voidType));
    expect(putCompleted.name, equals('put_Completed'));
    expect(putCompleted.isSetProperty, isTrue);
    expect(putCompleted.parameters.length, equals(1));
    expect(
        putCompleted.parameters.first.typeIdentifier.name,
        equals(
            'Windows.Foundation.AsyncOperationWithProgressCompletedHandler`2'));
    expect(
        putCompleted.parameters.first.typeIdentifier.type?.name,
        equals(
            'Windows.Foundation.AsyncOperationWithProgressCompletedHandler`2'));
    expect(
        putCompleted.parameters.first.typeIdentifier.type?.genericParams.length,
        equals(2));
    expect(
        putCompleted
            .parameters.first.typeIdentifier.type?.genericParams.first.name,
        equals('TResult'));
    expect(
        putCompleted
            .parameters.first.typeIdentifier.type?.genericParams.last.name,
        equals('TProgress'));
    expect(putCompleted.parameters.first.name, equals('handler'));
    expect(putCompleted.implFeatures.codeType, equals(CodeType.runtime));
    expect(putCompleted.implFeatures.isManaged, isTrue);

    final getCompleted = iaowp.methods[3];
    expect(getCompleted.memberAccess, equals(MemberAccess.public));
    expect(getCompleted.isHideBySig, isTrue);
    expect(getCompleted.isSpecialName, isTrue);
    expect(getCompleted.vTableLayout, equals(VtableLayout.newSlot));
    expect(getCompleted.isAbstract, isTrue);
    expect(getCompleted.isVirtual, isTrue);
    expect(getCompleted.name, equals('get_Completed'));
    expect(
        getCompleted.returnType.typeIdentifier.name,
        equals(
            'Windows.Foundation.AsyncOperationWithProgressCompletedHandler`2'));
    expect(
        getCompleted.returnType.typeIdentifier.type?.name,
        equals(
            'Windows.Foundation.AsyncOperationWithProgressCompletedHandler`2'));
    expect(getCompleted.returnType.typeIdentifier.type?.genericParams.length,
        equals(2));
    expect(
        getCompleted.returnType.typeIdentifier.type?.genericParams.first.name,
        equals('TResult'));
    expect(getCompleted.returnType.typeIdentifier.type?.genericParams.last.name,
        equals('TProgress'));
    expect(getCompleted.isGetProperty, isTrue);
    expect(getCompleted.parameters.length, isZero);

    expect(getCompleted.implFeatures.codeType, equals(CodeType.runtime));
    expect(getCompleted.implFeatures.isManaged, isTrue);

    final getResults = iaowp.methods[4];
    expect(getResults.memberAccess, equals(MemberAccess.public));
    expect(getResults.isHideBySig, isTrue);
    expect(getResults.isSpecialName, isFalse);
    expect(getResults.vTableLayout, equals(VtableLayout.newSlot));
    expect(getResults.isAbstract, isTrue);
    expect(getResults.isVirtual, isTrue);
    expect(getResults.returnType.typeIdentifier.baseType,
        equals(BaseType.classVariableTypeModifier));
    expect(getResults.returnType.typeIdentifier.genericParameterSequence,
        equals(0)); // TResult
    expect(getResults.name, equals('GetResults'));
    expect(getResults.isGetProperty, isFalse);
    expect(getResults.isSetProperty, isFalse);
    expect(getResults.parameters.length, isZero);
    expect(getResults.hasGenericParameters, isFalse);
    expect(getResults.implFeatures.codeType, equals(CodeType.runtime));
    expect(getResults.implFeatures.isManaged, isTrue);

    expect(iaowp.properties.length, equals(2));

    final progress = iaowp.properties[0];
    expect(progress.typeIdentifier.name,
        equals('Windows.Foundation.AsyncOperationProgressHandler`2'));
    expect(
        progress.typeIdentifier.baseType, equals(BaseType.genericTypeModifier));
    expect(progress.typeIdentifier.type?.genericParams.length, equals(2));
    expect(progress.typeIdentifier.type?.genericParams.first.name,
        equals('TResult'));
    expect(progress.typeIdentifier.type?.genericParams.last.name,
        equals('TProgress'));
    expect(progress.name, equals('Progress'));
    expect(progress.hasGetter, isTrue);
    expect(progress.getterMethod?.name, equals('get_Progress'));
    expect(progress.getterMethod?.token, equals(getProgress.token));
    expect(progress.hasSetter, isTrue);
    expect(progress.setterMethod?.name, equals('put_Progress'));
    expect(progress.setterMethod?.token, equals(putProgress.token));

    final completed = iaowp.properties[1];
    expect(
        completed.typeIdentifier.name,
        equals(
            'Windows.Foundation.AsyncOperationWithProgressCompletedHandler`2'));
    expect(completed.typeIdentifier.baseType,
        equals(BaseType.genericTypeModifier));
    expect(completed.typeIdentifier.type?.genericParams.length, equals(2));
    expect(completed.typeIdentifier.type?.genericParams.first.name,
        equals('TResult'));
    expect(completed.typeIdentifier.type?.genericParams.last.name,
        equals('TProgress'));
    expect(completed.name, equals('Completed'));
    expect(completed.hasGetter, isTrue);
    expect(completed.getterMethod?.name, equals('get_Completed'));
    expect(completed.getterMethod?.token, equals(getCompleted.token));
    expect(completed.hasSetter, isTrue);
    expect(completed.setterMethod?.name, equals('put_Completed'));
    expect(completed.setterMethod?.token, equals(putCompleted.token));
  });
}

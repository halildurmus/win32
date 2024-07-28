@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

// Exhaustively test a WinRT interface representation with generics

void main() {
  late Scope scope;

  setUpAll(() async {
    scope = await MetadataStore.loadWinRTMetadata();
  });

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
    final typeDef =
        scope.findTypeDef('Windows.Foundation.IAsyncOperationWithProgress`2')!;
    check(typeDef.customAttributes.length).equals(2);
    check(typeDef.isAbstract).isTrue();
    check(typeDef.isInterface).isTrue();
    check(typeDef.isWindowsRuntime).isTrue();
    check(typeDef.name)
        .equals('Windows.Foundation.IAsyncOperationWithProgress`2');
    check(typeDef.stringFormat).equals(StringFormat.ansi);
    check(typeDef.typeLayout).equals(TypeLayout.auto);
    check(typeDef.typeVisibility).equals(TypeVisibility.public);

    final contractVerAttr = typeDef
        .findAttribute('Windows.Foundation.Metadata.ContractVersionAttribute');
    check(contractVerAttr).isNotNull();
    check(contractVerAttr!.parameters.length).equals(2);
    final [contractVerFirstParam, contractVerSecondParam] =
        contractVerAttr.parameters;
    check(contractVerFirstParam.type.baseType)
        .equals(BaseType.classTypeModifier);
    check(contractVerFirstParam.value)
        .equals('Windows.Foundation.FoundationContract');
    check(contractVerSecondParam.type.baseType).equals(BaseType.uint32Type);
    check(contractVerSecondParam.value).equals(65536);

    final guidAttribute =
        typeDef.findAttribute('Windows.Foundation.Metadata.GuidAttribute');
    check(guidAttribute).isNotNull();
    check(typeDef.guid).equals('{b5d036d7-e297-498f-ba60-0289e76e23dd}');

    check(typeDef.genericParams.length).equals(2);
    final [firstGenericParam, secondGenericParam] = typeDef.genericParams;
    check(firstGenericParam.name).equals('TResult');
    check(secondGenericParam.name).equals('TProgress');

    check(typeDef.interfaces.length).equals(1);
    final [interface] = typeDef.interfaces;
    check(interface.name).equals('Windows.Foundation.IAsyncInfo');

    check(typeDef.methods.length).equals(5);

    final putProgress = typeDef.methods[0];
    check(putProgress.implFeatures.codeType).equals(CodeType.runtime);
    check(putProgress.implFeatures.isManaged).isTrue();
    check(putProgress.isAbstract).isTrue();
    check(putProgress.isHideBySig).isTrue();
    check(putProgress.isSetProperty).isTrue();
    check(putProgress.isSpecialName).isTrue();
    check(putProgress.isVirtual).isTrue();
    check(putProgress.memberAccess).equals(MemberAccess.public);
    check(putProgress.name).equals('put_Progress');
    check(putProgress.returnType.typeIdentifier.baseType)
        .equals(BaseType.voidType);
    check(putProgress.vTableLayout).equals(VtableLayout.newSlot);

    check(putProgress.parameters.length).equals(1);
    final [putProgressParam] = putProgress.parameters;
    check(putProgressParam.name).equals('handler');
    check(putProgressParam.typeIdentifier.name)
        .equals('Windows.Foundation.AsyncOperationProgressHandler`2');
    check(putProgressParam.typeIdentifier.type?.name)
        .equals('Windows.Foundation.AsyncOperationProgressHandler`2');
    check(putProgressParam.typeIdentifier.type?.genericParams.length).equals(2);
    check(putProgressParam.typeIdentifier.type?.genericParams.first.name)
        .equals('TResult');
    check(putProgressParam.typeIdentifier.type?.genericParams.last.name)
        .equals('TProgress');

    final getProgress = typeDef.methods[1];
    check(getProgress.implFeatures.codeType).equals(CodeType.runtime);
    check(getProgress.implFeatures.isManaged).isTrue();
    check(getProgress.isAbstract).isTrue();
    check(getProgress.isGetProperty).isTrue();
    check(getProgress.isHideBySig).isTrue();
    check(getProgress.isSpecialName).isTrue();
    check(getProgress.isVirtual).isTrue();
    check(getProgress.memberAccess).equals(MemberAccess.public);
    check(getProgress.name).equals('get_Progress');
    check(getProgress.parameters.length).equals(0);
    check(getProgress.returnType.typeIdentifier.name)
        .equals('Windows.Foundation.AsyncOperationProgressHandler`2');
    check(getProgress.returnType.typeIdentifier.type?.name)
        .equals('Windows.Foundation.AsyncOperationProgressHandler`2');
    check(getProgress.returnType.typeIdentifier.type?.genericParams.length)
        .equals(2);
    check(getProgress.returnType.typeIdentifier.type?.genericParams.first.name)
        .equals('TResult');
    check(getProgress.returnType.typeIdentifier.type?.genericParams.last.name)
        .equals('TProgress');
    check(getProgress.vTableLayout).equals(VtableLayout.newSlot);

    final putCompleted = typeDef.methods[2];
    check(putCompleted.implFeatures.codeType).equals(CodeType.runtime);
    check(putCompleted.implFeatures.isManaged).isTrue();
    check(putCompleted.isAbstract).isTrue();
    check(putCompleted.isHideBySig).isTrue();
    check(putCompleted.isSetProperty).isTrue();
    check(putCompleted.isSpecialName).isTrue();
    check(putCompleted.isVirtual).isTrue();
    check(putCompleted.memberAccess).equals(MemberAccess.public);
    check(putCompleted.name).equals('put_Completed');

    check(putCompleted.parameters.length).equals(1);
    final [putCompletedParam] = putCompleted.parameters;
    check(putCompletedParam.name).equals('handler');
    check(putCompleted.returnType.typeIdentifier.baseType)
        .equals(BaseType.voidType);
    check(putCompletedParam.typeIdentifier.name).equals(
        'Windows.Foundation.AsyncOperationWithProgressCompletedHandler`2');
    check(putCompletedParam.typeIdentifier.type?.name).equals(
        'Windows.Foundation.AsyncOperationWithProgressCompletedHandler`2');
    check(putCompletedParam.typeIdentifier.type?.genericParams.length)
        .equals(2);
    check(putCompletedParam.typeIdentifier.type?.genericParams.first.name)
        .equals('TResult');
    check(putCompletedParam.typeIdentifier.type?.genericParams.last.name)
        .equals('TProgress');
    check(putCompleted.vTableLayout).equals(VtableLayout.newSlot);

    final getCompleted = typeDef.methods[3];
    check(getCompleted.implFeatures.codeType).equals(CodeType.runtime);
    check(getCompleted.implFeatures.isManaged).isTrue();
    check(getCompleted.isAbstract).isTrue();
    check(getCompleted.isGetProperty).isTrue();
    check(getCompleted.isHideBySig).isTrue();
    check(getCompleted.isSpecialName).isTrue();
    check(getCompleted.isVirtual).isTrue();
    check(getCompleted.memberAccess).equals(MemberAccess.public);
    check(getCompleted.name).equals('get_Completed');
    check(getCompleted.parameters.length).equals(0);
    check(getCompleted.returnType.typeIdentifier.name).equals(
        'Windows.Foundation.AsyncOperationWithProgressCompletedHandler`2');
    check(getCompleted.returnType.typeIdentifier.type?.name).equals(
        'Windows.Foundation.AsyncOperationWithProgressCompletedHandler`2');
    check(getCompleted.returnType.typeIdentifier.type?.genericParams.length)
        .equals(2);
    check(getCompleted.returnType.typeIdentifier.type?.genericParams.first.name)
        .equals('TResult');
    check(getCompleted.returnType.typeIdentifier.type?.genericParams.last.name)
        .equals('TProgress');
    check(getCompleted.vTableLayout).equals(VtableLayout.newSlot);

    final getResults = typeDef.methods[4];
    check(getResults.hasGenericParameters).isFalse();
    check(getResults.implFeatures.codeType).equals(CodeType.runtime);
    check(getResults.implFeatures.isManaged).isTrue();
    check(getResults.isAbstract).isTrue();
    check(getResults.isHideBySig).isTrue();
    check(getResults.isGetProperty).isFalse();
    check(getResults.isSetProperty).isFalse();
    check(getResults.isSpecialName).isFalse();
    check(getResults.isVirtual).isTrue();
    check(getResults.memberAccess).equals(MemberAccess.public);
    check(getResults.name).equals('GetResults');
    check(getResults.parameters.length).equals(0);
    check(getResults.returnType.typeIdentifier.baseType)
        .equals(BaseType.classVariableTypeModifier);
    check(getResults.returnType.typeIdentifier.genericParameterSequence)
        .equals(0); // TResult
    check(getResults.vTableLayout).equals(VtableLayout.newSlot);

    check(typeDef.properties.length).equals(2);

    final progress = typeDef.properties[0];
    check(progress.getterMethod).isNotNull();
    check(progress.getterMethod!.name).equals('get_Progress');
    check(progress.getterMethod!.token).equals(getProgress.token);
    check(progress.hasGetter).isTrue();
    check(progress.hasSetter).isTrue();
    check(progress.name).equals('Progress');
    check(progress.setterMethod).isNotNull();
    check(progress.setterMethod!.name).equals('put_Progress');
    check(progress.setterMethod!.token).equals(putProgress.token);
    check(progress.typeIdentifier.baseType)
        .equals(BaseType.genericTypeModifier);
    check(progress.typeIdentifier.name)
        .equals('Windows.Foundation.AsyncOperationProgressHandler`2');
    check(progress.typeIdentifier.type?.genericParams.length).equals(2);
    check(progress.typeIdentifier.type?.genericParams.first.name)
        .equals('TResult');
    check(progress.typeIdentifier.type?.genericParams.last.name)
        .equals('TProgress');

    final completed = typeDef.properties[1];
    check(completed.getterMethod?.name).equals('get_Completed');
    check(completed.getterMethod?.token).equals(getCompleted.token);
    check(completed.hasGetter).isTrue();
    check(completed.hasSetter).isTrue();
    check(completed.name).equals('Completed');
    check(completed.setterMethod?.name).equals('put_Completed');
    check(completed.setterMethod?.token).equals(putCompleted.token);
    check(completed.typeIdentifier.name).equals(
        'Windows.Foundation.AsyncOperationWithProgressCompletedHandler`2');
    check(completed.typeIdentifier.baseType)
        .equals(BaseType.genericTypeModifier);
    check(completed.typeIdentifier.type?.genericParams.length).equals(2);
    check(completed.typeIdentifier.type?.genericParams.first.name)
        .equals('TResult');
    check(completed.typeIdentifier.type?.genericParams.last.name)
        .equals('TProgress');
  });

  tearDownAll(MetadataStore.close);
}

@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Method properties 1', () {
    final typeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Diagnostics.AsyncCausalityTracer');
    final method = typeDef!.findMethod('TraceSynchronousWorkCompletion')!;

    expect(method.toString(), equals('TraceSynchronousWorkCompletion'));
    expect(method.isHideBySig, isTrue);
    expect(method.isStatic, isTrue);
    expect(method.vTableLayout, equals(VtableLayout.reuseSlot));
    expect(method.isAbstract, isFalse);
    expect(method.isVirtual, isFalse);
    expect(method.parent, equals(typeDef));
  });

  test('Method properties 2', () {
    final typeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Diagnostics.IAsyncCausalityTracerStatics');
    final method = typeDef!.findMethod('TraceSynchronousWorkCompletion')!;

    expect(method.isHideBySig, isTrue);
    expect(method.vTableLayout, equals(VtableLayout.newSlot));
    expect(method.isAbstract, isTrue);
    expect(method.isVirtual, isTrue);
    expect(method.parent, equals(typeDef));
  });

  test('Method properties 3', () {
    const methodName = 'DoDragDrop';

    final scope = MetadataStore.getWin32Scope();
    final typeDef = scope.findTypeDef('Windows.Win32.System.Ole.Apis');
    final method = typeDef!.findMethod(methodName)!;

    expect(method.isHideBySig, isTrue);
    expect(method.vTableLayout, equals(VtableLayout.reuseSlot));
    expect(method.isStatic, isTrue);
    expect(method.isAbstract, isFalse);
    expect(method.isPinvokeImpl, isTrue);
    expect(method.pinvokeMap.isNoMangle, isTrue);
    expect(method.pinvokeMap.importName, equals(methodName));
    expect(method.parent, equals(typeDef));

    final importDllToken = method.pinvokeMap.importDllToken;
    final moduleRef = ModuleRef.fromToken(scope, importDllToken);
    expect(moduleRef.name, equals('OLE32'));

    expect(
        method.pinvokeMap.callingConvention, equals(CallingConvention.winApi));

    expect(method.implFeatures.isAggressiveInlining, isFalse);
    expect(method.implFeatures.isForwardRef, isFalse);
    expect(method.implFeatures.isManaged, isTrue);
    expect(method.implFeatures.isNoInlining, isFalse);
    expect(method.implFeatures.isNoOptimization, isFalse);
    expect(method.implFeatures.isPreserveSig, isTrue);
    expect(method.implFeatures.isSynchronized, isFalse);
  });

  test('Method properties 4', () {
    const methodName = 'GetAltMonthNames';

    final scope = MetadataStore.getWin32Scope();
    final typeDef = scope.findTypeDef('Windows.Win32.System.Ole.Apis');
    final method = typeDef!.findMethod(methodName)!;

    expect(method.isPinvokeImpl, isTrue);
    expect(method.pinvokeMap.isNoMangle, isTrue);
    expect(method.pinvokeMap.importName, equals(methodName));
    expect(method.pinvokeMap.stringMarshalConvention,
        equals(StringMarshalConvention.notSpecified));
    expect(method.pinvokeMap.bestFitConvention, equals(BestFit.useAssem));
    expect(method.pinvokeMap.throwOnUnmappableCharConvention,
        equals(ThrowOnUnmappableChar.useAssem));
  });
}

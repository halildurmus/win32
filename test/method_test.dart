@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Method properties 1', () {
    final typeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Diagnostics.AsyncCausalityTracer');
    final method = typeDef!.findMethod('TraceSynchronousWorkCompletion')!;

    check(method.toString()).equals('[voidType] TraceSynchronousWorkCompletion'
        '(CausalityTraceLevel traceLevel, '
        'CausalitySource source, '
        'CausalitySynchronousWork work)');
    check(method.isHideBySig).isTrue();
    check(method.isStatic).isTrue();
    check(method.vTableLayout).equals(VtableLayout.reuseSlot);
    check(method.isAbstract).isFalse();
    check(method.isVirtual).isFalse();
    check(method.parent).equals(typeDef);
  });

  test('Method properties 2', () {
    final typeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Diagnostics.IAsyncCausalityTracerStatics');
    final method = typeDef!.findMethod('TraceSynchronousWorkCompletion')!;

    check(method.isHideBySig).isTrue();
    check(method.vTableLayout).equals(VtableLayout.newSlot);
    check(method.isAbstract).isTrue();
    check(method.isVirtual).isTrue();
    check(method.parent).equals(typeDef);
  });

  test('Method properties 3', () {
    const methodName = 'DoDragDrop';

    final scope = MetadataStore.getWin32Scope();
    final typeDef = scope.findTypeDef('Windows.Win32.System.Ole.Apis');
    final method = typeDef!.findMethod(methodName)!;

    check(method.isHideBySig).isTrue();
    check(method.vTableLayout).equals(VtableLayout.reuseSlot);
    check(method.isStatic).isTrue();
    check(method.isAbstract).isFalse();
    check(method.isPinvokeImpl).isTrue();
    check(method.pinvokeMap.isNoMangle).isTrue();
    check(method.pinvokeMap.importName).equals(methodName);
    check(method.parent).equals(typeDef);

    final importDllToken = method.pinvokeMap.importDllToken;
    final moduleRef = ModuleRef.fromToken(scope, importDllToken);
    check(moduleRef.name).equals('OLE32.dll');

    check(method.pinvokeMap.callingConvention).equals(CallingConvention.winApi);

    check(method.implFeatures.isAggressiveInlining).isFalse();
    check(method.implFeatures.isForwardRef).isFalse();
    check(method.implFeatures.isManaged).isTrue();
    check(method.implFeatures.isNoInlining).isFalse();
    check(method.implFeatures.isNoOptimization).isFalse();
    check(method.implFeatures.isPreserveSig).isFalse();
    check(method.implFeatures.isSynchronized).isFalse();
  });

  test('Method properties 4', () {
    const methodName = 'GetAltMonthNames';

    final scope = MetadataStore.getWin32Scope();
    final typeDef = scope.findTypeDef('Windows.Win32.System.Ole.Apis');
    final method = typeDef!.findMethod(methodName)!;

    check(method.isPinvokeImpl).isTrue();
    check(method.pinvokeMap.isNoMangle).isTrue();
    check(method.pinvokeMap.importName).equals(methodName);
    check(method.pinvokeMap.stringMarshalConvention)
        .equals(StringMarshalConvention.notSpecified);
    check(method.pinvokeMap.bestFitConvention).equals(BestFit.useAssem);
    check(method.pinvokeMap.throwOnUnmappableCharConvention)
        .equals(ThrowOnUnmappableChar.useAssem);
  });
}

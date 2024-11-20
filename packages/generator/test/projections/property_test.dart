import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:meta/meta.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart' as winmd;

void main() {
  setUpAll(WindowsMetadata.load);

  group('ComGetPropertyProjection', () {
    testGetProperty('ISpellChecker', 'get_LanguageTag', (projection) {
      check(projection.name).equals('languageTag');
      check(projection.originalName).equals('get_LanguageTag');
      check(projection.wrapperName).equals('_get_LanguageTagFn');
      check(projection.hint).equals(ReturnHint.resultValue);
      check(projection.isNullable).isFalse();
      check(projection.returnType.symbol).equals('PWSTR');
      check(
        projection.nativePrototype.accept(DartEmitter()).toString(),
      ).equals('Int32 Function(VTablePointer, Pointer<PWSTR>)');
      check(
        projection.dartPrototype.accept(DartEmitter()).toString(),
      ).equals('int Function(VTablePointer, Pointer<PWSTR>)');
      check(projection.methodParameters).isEmpty();
      check(
        projection.arguments.map((a) => a.accept(DartEmitter()).toString()),
      ).deepEquals(['ptr', 'value']);
    });

    testGetProperty('IEnumNetworks', 'get__NewEnum', (projection) {
      check(projection.name).equals('newEnum');
      check(projection.originalName).equals('get__NewEnum');
      check(projection.wrapperName).equals('_get__NewEnumFn');
      check(projection.hint).equals(ReturnHint.resultValue);
      check(projection.isNullable).isTrue();
      check(projection.returnType.symbol).equals('IEnumVARIANT?');
      check(
        projection.nativePrototype.accept(DartEmitter()).toString(),
      ).equals('Int32 Function(VTablePointer, Pointer<VTablePointer>)');
      check(
        projection.dartPrototype.accept(DartEmitter()).toString(),
      ).equals('int Function(VTablePointer, Pointer<VTablePointer>)');
      check(projection.methodParameters).isEmpty();
      check(
        projection.arguments.map((a) => a.accept(DartEmitter()).toString()),
      ).deepEquals(['ptr', 'ppEnumVar']);
    });

    testGetProperty('INetwork', 'get_IsConnected', (projection) {
      check(projection.name).equals('isConnected');
      check(projection.originalName).equals('get_IsConnected');
      check(projection.wrapperName).equals('_get_IsConnectedFn');
      check(projection.hint).equals(ReturnHint.resultValue);
      check(projection.isNullable).isFalse();
      check(projection.returnType.symbol).equals('bool');
      check(
        projection.nativePrototype.accept(DartEmitter()).toString(),
      ).equals('Int32 Function(VTablePointer, Pointer<VARIANT_BOOL>)');
      check(
        projection.dartPrototype.accept(DartEmitter()).toString(),
      ).equals('int Function(VTablePointer, Pointer<VARIANT_BOOL>)');
      check(projection.methodParameters).isEmpty();
      check(
        projection.arguments.map((a) => a.accept(DartEmitter()).toString()),
      ).deepEquals(['ptr', 'pbIsConnected']);
    });

    testGetProperty('IWinHttpRequest', 'get_ResponseBody', (projection) {
      check(projection.name).equals('responseBody');
      check(projection.originalName).equals('get_ResponseBody');
      check(projection.wrapperName).equals('_get_ResponseBodyFn');
      check(projection.hint).equals(ReturnHint.resultValue);
      check(projection.isNullable).isFalse();
      check(projection.returnType.symbol).equals('Pointer<VARIANT>');
      check(
        projection.nativePrototype.accept(DartEmitter()).toString(),
      ).equals('Int32 Function(VTablePointer, Pointer<VARIANT>)');
      check(
        projection.dartPrototype.accept(DartEmitter()).toString(),
      ).equals('int Function(VTablePointer, Pointer<VARIANT>)');
      check(projection.methodParameters).isEmpty();
      check(
        projection.arguments.map((a) => a.accept(DartEmitter()).toString()),
      ).deepEquals(['ptr', 'body']);
    });

    testGetProperty('IPMTaskInfo', 'get_RuntimeType', (projection) {
      check(projection.name).equals(r'runtimeType$');
      check(projection.originalName).equals('get_RuntimeType');
      check(projection.wrapperName).equals('_get_RuntimeTypeFn');
      check(projection.hint).equals(ReturnHint.resultValue);
      check(projection.isNullable).isFalse();
      check(projection.returnType.symbol).equals('PACKMAN_RUNTIME');
      check(
        projection.nativePrototype.accept(DartEmitter()).toString(),
      ).equals('Int32 Function(VTablePointer, Pointer<Int32>)');
      check(
        projection.dartPrototype.accept(DartEmitter()).toString(),
      ).equals('int Function(VTablePointer, Pointer<Int32>)');
      check(projection.methodParameters).isEmpty();
      check(
        projection.arguments.map((a) => a.accept(DartEmitter()).toString()),
      ).deepEquals(['ptr', 'pRuntimetype']);
    });

    testGetProperty('IUIAutomationRangeValuePattern', 'get_CurrentValue', (
      projection,
    ) {
      check(projection.name).equals('currentValue');
      check(projection.originalName).equals('get_CurrentValue');
      check(projection.wrapperName).equals('_get_CurrentValueFn');
      check(projection.hint).equals(ReturnHint.resultValue);
      check(projection.isNullable).isFalse();
      check(projection.returnType.symbol).equals('double');
      check(
        projection.nativePrototype.accept(DartEmitter()).toString(),
      ).equals('Int32 Function(VTablePointer, Pointer<Double>)');
      check(
        projection.dartPrototype.accept(DartEmitter()).toString(),
      ).equals('int Function(VTablePointer, Pointer<Double>)');
      check(projection.methodParameters).isEmpty();
      check(
        projection.arguments.map((a) => a.accept(DartEmitter()).toString()),
      ).deepEquals(['ptr', 'retVal']);
    });
  });

  group('ComSetPropertyProjection', () {
    testSetProperty('ISpeechVoice', 'put_Volume', (projection) {
      check(projection.originalName).equals('put_Volume');
      check(projection.name).equals('volume');
      check(projection.wrapperName).equals('_put_VolumeFn');
      check(projection.hint).equals(ReturnHint.resultVoid);
      check(projection.isNullable).isFalse();
      check(projection.returnType.symbol).equals('void');
      check(
        projection.nativePrototype.accept(DartEmitter()).toString(),
      ).equals('Int32 Function(VTablePointer, Int32)');
      check(
        projection.dartPrototype.accept(DartEmitter()).toString(),
      ).equals('int Function(VTablePointer, int)');
      check(
        projection.methodParameters.map(
          (p) => '${p.dartType.symbol} ${p.name}',
        ),
      ).deepEquals(['int volume']);
      check(
        projection.arguments.map((a) => a.accept(DartEmitter()).toString()),
      ).deepEquals(['ptr', 'volume']);
    });

    testSetProperty('IShellLinkDual', 'put_Description', (projection) {
      check(projection.name).equals('description');
      check(projection.originalName).equals('put_Description');
      check(projection.wrapperName).equals('_put_DescriptionFn');
      check(projection.hint).equals(ReturnHint.resultVoid);
      check(projection.isNullable).isFalse();
      check(projection.returnType.symbol).equals('void');
      check(
        projection.nativePrototype.accept(DartEmitter()).toString(),
      ).equals('Int32 Function(VTablePointer, BSTR)');
      check(
        projection.dartPrototype.accept(DartEmitter()).toString(),
      ).equals('int Function(VTablePointer, BSTR)');
      check(
        projection.methodParameters.map(
          (p) => '${p.dartType.symbol} ${p.name}',
        ),
      ).deepEquals(['BSTR bs']);
      check(
        projection.arguments.map((a) => a.accept(DartEmitter()).toString()),
      ).deepEquals(['ptr', 'bs']);
    });

    testSetProperty('IUIAutomationCacheRequest', 'put_TreeFilter', (
      projection,
    ) {
      check(projection.name).equals('treeFilter');
      check(projection.originalName).equals('put_TreeFilter');
      check(projection.wrapperName).equals('_put_TreeFilterFn');
      check(projection.hint).equals(ReturnHint.resultVoid);
      check(projection.isNullable).isFalse();
      check(projection.returnType.symbol).equals('void');
      check(
        projection.nativePrototype.accept(DartEmitter()).toString(),
      ).equals('Int32 Function(VTablePointer, VTablePointer)');
      check(
        projection.dartPrototype.accept(DartEmitter()).toString(),
      ).equals('int Function(VTablePointer, VTablePointer)');
      check(
        projection.methodParameters.map(
          (p) => '${p.dartType.symbol} ${p.name}',
        ),
      ).deepEquals(['IUIAutomationCondition? filter']);
      check(
        projection.arguments.map((a) => a.accept(DartEmitter()).toString()),
      ).deepEquals(['ptr', 'filter?.ptr ?? nullptr']);
    });
  });
}

@isTest
void testGetProperty(
  String parent,
  String propertyName,
  void Function(ComGetPropertyProjection) projection,
) {
  test('$parent.$propertyName', () {
    final typeDef = WindowsMetadata.findTypeDefByName(parent);
    final method = typeDef.findMethod(propertyName);
    projection(ComGetPropertyProjection(method));
  });
}

@isTest
void testSetProperty(
  String parent,
  String propertyName,
  void Function(ComSetPropertyProjection) projection,
) {
  test('$parent.$propertyName', () {
    final typeDef = WindowsMetadata.findTypeDefByName(parent);
    final method = typeDef.findMethod(propertyName);
    projection(ComSetPropertyProjection(method));
  });
}

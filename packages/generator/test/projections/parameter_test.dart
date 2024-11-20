import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:meta/meta.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart' as winmd;

void main() {
  setUpAll(WindowsMetadata.load);

  group('ParameterProjection', () {
    testFunctionParameter('NtQueryObject', 'ObjectInformation', (projection) {
      check(projection.name).equals('objectInformation');
      check(projection.originalName).equals('ObjectInformation');
      check(projection.isNullable).isTrue();
      check(projection.dartType.symbol).equals('Pointer?');
      check(projection.nativeProjection.symbol).equals('Pointer');
      check(projection.dartProjection.symbol).equals('Pointer');
      check(
        projection.argument.accept(DartEmitter()).toString(),
      ).equals('objectInformation ?? nullptr');
    });

    testFunctionParameter('NtLockFile', 'FailImmediately', (projection) {
      check(projection.name).equals('failImmediately');
      check(projection.originalName).equals('FailImmediately');
      check(projection.isNullable).isFalse();
      check(projection.dartType.symbol).equals('bool');
      check(projection.nativeProjection.symbol).equals('BOOLEAN');
      check(projection.dartProjection.symbol).equals('int');
      check(
        projection.argument.accept(DartEmitter()).toString(),
      ).equals('failImmediately ? TRUE : FALSE');
    });

    testFunctionParameter('DecryptFileW', 'dwReserved', (projection) {
      check(projection.name).equals('dwReserved');
      check(projection.originalName).equals('dwReserved');
      check(projection.isNullable).isTrue();
      check(projection.dartType.symbol).equals('int?');
      check(projection.nativeProjection.symbol).equals('Uint32');
      check(projection.dartProjection.symbol).equals('int');
      check(
        projection.argument.accept(DartEmitter()).toString(),
      ).equals('NULL');
    });

    testFunctionParameter('CoCreateInstanceEx', 'Clsid', (projection) {
      check(projection.name).equals('clsid');
      check(projection.originalName).equals('Clsid');
      check(projection.isNullable).isFalse();
      check(projection.dartType.symbol).equals('Pointer<GUID>');
      check(projection.nativeProjection.symbol).equals('Pointer<GUID>');
      check(projection.dartProjection.symbol).equals('Pointer<GUID>');
      check(
        projection.argument.accept(DartEmitter()).toString(),
      ).equals('clsid');
    });

    testFunctionParameter('CoCreateInstanceEx', 'punkOuter', (projection) {
      check(projection.name).equals('punkOuter');
      check(projection.originalName).equals('punkOuter');
      check(projection.isNullable).isTrue();
      check(projection.dartType.symbol).equals('IUnknown?');
      check(projection.nativeProjection.symbol).equals('VTablePointer');
      check(projection.dartProjection.symbol).equals('VTablePointer');
      check(
        projection.argument.accept(DartEmitter()).toString(),
      ).equals('punkOuter?.ptr ?? nullptr');
    });

    testFunctionParameter('CoInitializeEx', 'pvReserved', (projection) {
      check(projection.name).equals('pvReserved');
      check(projection.originalName).equals('pvReserved');
      check(projection.isNullable).isTrue();
      check(projection.dartType.symbol).equals('Pointer?');
      check(projection.nativeProjection.symbol).equals('Pointer');
      check(projection.dartProjection.symbol).equals('Pointer');
      check(
        projection.argument.accept(DartEmitter()).toString(),
      ).equals('nullptr');
    });

    testFunctionParameter('SetClipboardData', 'hMem', (projection) {
      check(projection.name).equals('hMem');
      check(projection.originalName).equals('hMem');
      check(projection.isNullable).isTrue();
      check(projection.dartType.symbol).equals('int?');
      check(projection.nativeProjection.symbol).equals('HANDLE');
      check(projection.dartProjection.symbol).equals('int');
      check(
        projection.argument.accept(DartEmitter()).toString(),
      ).equals('hMem ?? NULL');
    });

    testFunctionParameter('VarBstrFromBool', 'boolIn', (projection) {
      check(projection.name).equals('boolIn');
      check(projection.originalName).equals('boolIn');
      check(projection.isNullable).isFalse();
      check(projection.dartType.symbol).equals('bool');
      check(projection.nativeProjection.symbol).equals('VARIANT_BOOL');
      check(projection.dartProjection.symbol).equals('int');
      check(
        projection.argument.accept(DartEmitter()).toString(),
      ).equals('boolIn ? VARIANT_TRUE : FALSE');
    });

    testFunctionParameter('OpenProcess', 'bInheritHandle', (projection) {
      check(projection.name).equals('bInheritHandle');
      check(projection.originalName).equals('bInheritHandle');
      check(projection.isNullable).isFalse();
      check(projection.dartType.symbol).equals('bool');
      check(projection.nativeProjection.symbol).equals('BOOL');
      check(projection.dartProjection.symbol).equals('int');
      check(
        projection.argument.accept(DartEmitter()).toString(),
      ).equals('bInheritHandle ? TRUE : FALSE');
    });

    testFunctionParameter('CreateWindowExW', 'dwExStyle', (projection) {
      check(projection.name).equals('dwExStyle');
      check(projection.originalName).equals('dwExStyle');
      check(projection.isNullable).isFalse();
      check(projection.dartType.symbol).equals('WINDOW_EX_STYLE');
      check(projection.nativeProjection.symbol).equals('Uint32');
      check(projection.dartProjection.symbol).equals('int');
      check(
        projection.argument.accept(DartEmitter()).toString(),
      ).equals('dwExStyle');
    });

    testMethodParameter('IFileDialog', 'GetFolder', 'ppsi', (projection) {
      check(projection.name).equals('ppsi');
      check(projection.originalName).equals('ppsi');
      check(projection.isNullable).isFalse();
      check(projection.dartType.symbol).equals('Pointer<VTablePointer>');
      check(
        projection.nativeProjection.symbol,
      ).equals('Pointer<VTablePointer>');
      check(projection.dartProjection.symbol).equals('Pointer<VTablePointer>');
      check(
        projection.argument.accept(DartEmitter()).toString(),
      ).equals('ppsi');
    });

    testMethodParameter('IFileDialog', 'SetFolder', 'psi', (projection) {
      check(projection.name).equals('psi');
      check(projection.originalName).equals('psi');
      check(projection.isNullable).isTrue();
      check(projection.dartType.symbol).equals('IShellItem?');
      check(projection.nativeProjection.symbol).equals('VTablePointer');
      check(projection.dartProjection.symbol).equals('VTablePointer');
      check(
        projection.argument.accept(DartEmitter()).toString(),
      ).equals('psi?.ptr ?? nullptr');
    });

    testMethodParameter('IShellFolder', 'ParseDisplayName', 'pchEaten', (
      projection,
    ) {
      check(projection.name).equals('pchEaten');
      check(projection.originalName).equals('pchEaten');
      check(projection.isNullable).isTrue();
      check(projection.dartType.symbol).equals('Pointer<Uint32>?');
      check(projection.nativeProjection.symbol).equals('Pointer<Uint32>');
      check(projection.dartProjection.symbol).equals('Pointer<Uint32>');
      check(
        projection.argument.accept(DartEmitter()).toString(),
      ).equals('nullptr');
    });
  });
}

@isTest
void testFunctionParameter(
  String functionName,
  String parameterName,
  void Function(ParameterProjection) projection,
) {
  test('$functionName.$parameterName', () {
    final function = WindowsMetadata.findFunctionByName(functionName);
    final parameter = function.findParameter(parameterName);
    projection(ParameterProjection(parameter));
  });
}

@isTest
void testMethodParameter(
  String parent,
  String methodName,
  String parameterName,
  void Function(ParameterProjection) projection,
) {
  test('$parent.$methodName.$parameterName', () {
    final typeDef = WindowsMetadata.findTypeDefByName(parent);
    final method = typeDef.findMethod(methodName);
    final parameter = method.findParameter(parameterName);
    projection(ParameterProjection(parameter));
  });
}

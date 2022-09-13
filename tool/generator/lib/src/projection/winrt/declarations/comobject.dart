import '../../../../generator.dart';

mixin _ComObjectProjection on WinRTMethodProjection {
  String get retType {
    // TODO(halildurmus): Explain why we need to do this
    final isMethodFromPropertyValueStatics =
        method.parent.name == 'Windows.Foundation.IPropertyValueStatics';
    if (isMethodFromPropertyValueStatics) {
      return ['CreateEmpty', 'CreateInspectable'].contains(method.name)
          ? 'Pointer<COMObject>'
          : 'IPropertyValue';
    }

    final typeIdentifierName = lastComponent(returnType.typeIdentifier.name);
    // TODO: Remove this once the asynchronous methods are supported
    if (typeIdentifierName.startsWith('IAsync')) return 'Pointer<COMObject>';

    return typeIdentifierName;
  }

  String get returnStatement => retType == 'Pointer<COMObject>'
      ? 'return retValuePtr;'
      : 'return $retType.fromRawPointer(retValuePtr);';
}

class WinRTMethodReturningComObjectProjection extends WinRTMethodProjection
    with _ComObjectProjection {
  WinRTMethodReturningComObjectProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      $retType $camelCasedName($methodParams) {
        final retValuePtr = calloc<COMObject>();
        $parametersPreamble
        ${ffiCall()}
        $parametersPostamble
        $returnStatement
      }
''';
}

class WinRTGetPropertyReturningComObjectProjection
    extends WinRTGetPropertyProjection with _ComObjectProjection {
  WinRTGetPropertyReturningComObjectProjection(
      super.method, super.vtableOffset);

  @override
  String toString() => '''
      $retType get $exposedMethodName {
        final retValuePtr = calloc<COMObject>();

        ${ffiCall()}

        $returnStatement
      }
''';
}

class WinRTSetPropertyReturningComObjectProjection
    extends WinRTSetPropertyProjection with _ComObjectProjection {
  WinRTSetPropertyReturningComObjectProjection(
      super.method, super.vtableOffset);

  @override
  String toString() => '''
      set $exposedMethodName(${parameters.first.type.methodParamType} value) {
        ${ffiCall('value.ptr.cast<Pointer<COMObject>>().value')}
      }
  ''';
}
